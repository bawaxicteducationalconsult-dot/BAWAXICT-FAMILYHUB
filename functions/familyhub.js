```javascript
// Same-origin FamilyHub reverse proxy.
// D1-aware migration begins here, while the existing backend
// remains the fallback for all existing FamilyHub functionality.

export async function onRequest(context) {
  const url = new URL(context.request.url);
  const db = context.env.DB;

  // ------------------------------------------------------------
  // D1 CONNECTION CHECK
  // ------------------------------------------------------------
  // This lets us verify that this deployed FamilyHub Function
  // can access the D1 database.
  if (url.pathname === '/familyhub/__d1_check') {
    if (!db) {
      return new Response(
        JSON.stringify({
          ok: false,
          error: 'DB binding is not available'
        }),
        {
          status: 500,
          headers: {
            'content-type': 'application/json; charset=utf-8'
          }
        }
      );
    }

    return new Response(
      JSON.stringify({
        ok: true,
        message: 'FamilyHub D1 binding is available'
      }),
      {
        status: 200,
        headers: {
          'content-type': 'application/json; charset=utf-8'
        }
      }
    );
  }

  // ------------------------------------------------------------
  // EXISTING FAMILYHUB PROXY
  // ------------------------------------------------------------
  // Everything else continues to use the existing backend.
  const configured = (context.env.FAMILYHUB_ORIGIN || '').trim();

  if (!configured) {
    return new Response(
      'FamilyHub backend is not configured for this test deployment.',
      {
        status: 503,
        headers: {
          'content-type': 'text/plain; charset=utf-8'
        }
      }
    );
  }

  const origin = configured.replace(/\/$/, '');
  const suffix =
    url.pathname.replace(/^\/familyhub/, '') || '/';

  return proxy(
    context.request,
    origin + suffix + url.search,
    origin
  );
}

async function proxy(request, target, origin) {
  const headers = new Headers(request.headers);
  headers.delete('host');

  const init = {
    method: request.method,
    headers,
    redirect: 'manual'
  };

  if (
    request.method !== 'GET' &&
    request.method !== 'HEAD'
  ) {
    init.body = request.body;
  }

  const response = await fetch(target, init);
  const out = new Response(response.body, response);

  const location = out.headers.get('Location');

  if (location) {
    try {
      const loc = new URL(location, target);
      const base = new URL(origin);

      if (loc.origin === base.origin) {
        out.headers.set(
          'Location',
          '/familyhub' + loc.pathname + loc.search
        );
      }
    } catch (_) {}
  }

  return out;
}
```
