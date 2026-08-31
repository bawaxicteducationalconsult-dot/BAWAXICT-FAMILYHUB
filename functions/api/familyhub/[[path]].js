```javascript
export async function onRequest(context) {
  const url = new URL(context.request.url);

  // D1 is available to this deployed Pages Function.
  const db = context.env.DB;

  // ------------------------------------------------------------
  // D1 CONNECTION CHECK
  // ------------------------------------------------------------
  if (url.pathname === '/api/familyhub/__d1_check') {
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
  // All existing FamilyHub routes continue to use the
  // existing backend until we migrate them individually.
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
    url.pathname.replace(/^\/api\/familyhub/, '') || '/';

  const target = origin + '/api' + suffix + url.search;

  const headers = new Headers(context.request.headers);
  headers.delete('host');

  const init = {
    method: context.request.method,
    headers,
    redirect: 'manual'
  };

  if (
    context.request.method !== 'GET' &&
    context.request.method !== 'HEAD'
  ) {
    init.body = context.request.body;
  }

  const response = await fetch(target, init);

  return new Response(response.body, response);
}
```
