// Cloudflare Pages Advanced Mode Worker.
// This file is intentionally in the Pages build output directory (site/).
// It takes control of requests, routes FamilyHub paths explicitly, and
// delegates every other request to the static asset service.

function allowedOrigins(env) {
  return new Set(
    (env.BAWAXICT_ALLOWED_ORIGINS || '')
      .split(',')
      .map(s => s.trim().replace(/\/$/, ''))
      .filter(Boolean)
  );
}

function addCors(response, request, env) {
  const origin = (request.headers.get('Origin') || '').replace(/\/$/, '');
  if (!origin || !allowedOrigins(env).has(origin)) return response;

  const out = new Response(response.body, response);
  out.headers.set('Access-Control-Allow-Origin', origin);
  out.headers.set('Access-Control-Allow-Credentials', 'true');
  out.headers.append('Vary', 'Origin');
  return out;
}

async function proxy(request, target, origin) {
  const headers = new Headers(request.headers);
  headers.delete('host');

  const init = {
    method: request.method,
    headers,
    redirect: 'manual'
  };

  if (request.method !== 'GET' && request.method !== 'HEAD') {
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
        const prefix = target.includes('/api/')
          ? '/api/familyhub'
          : '/familyhub';

        out.headers.set(
          'Location',
          prefix + loc.pathname + loc.search
        );
      }
    } catch (_) {
      // Leave an invalid/unparseable Location header unchanged.
    }
  }

  return out;
}

export default {
  async fetch(request, env) {
    const url = new URL(request.url);

    // Preserve the existing allowlisted CORS behavior.
    const requestOrigin = (request.headers.get('Origin') || '').replace(/\/$/, '');
    const isAllowed = requestOrigin && allowedOrigins(env).has(requestOrigin);

    if (request.method === 'OPTIONS') {
      const headers = {
        'Access-Control-Allow-Methods':
          'GET,HEAD,POST,PUT,PATCH,DELETE,OPTIONS',
        'Access-Control-Allow-Headers':
          'Content-Type, Authorization, X-Requested-With'
      };

      if (isAllowed) {
        headers['Access-Control-Allow-Origin'] = requestOrigin;
        headers['Access-Control-Allow-Credentials'] = 'true';
        headers['Vary'] = 'Origin';
      }

      return new Response(null, { status: 204, headers });
    }

    // Temporary D1 verification endpoint.
    if (url.pathname === '/api/familyhub/__d1_check') {
      const response = env.DB
        ? new Response(
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
          )
        : new Response(
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

      return addCors(response, request, env);
    }

    const configured = (env.FAMILYHUB_ORIGIN || '').trim();

    // /api/familyhub/* keeps the existing backend behavior for now.
    if (url.pathname === '/api/familyhub' ||
        url.pathname.startsWith('/api/familyhub/')) {
      if (!configured) {
        return addCors(
          new Response(
            'FamilyHub backend is not configured for this test deployment.',
            {
              status: 503,
              headers: {
                'content-type': 'text/plain; charset=utf-8'
              }
            }
          ),
          request,
          env
        );
      }

      const origin = configured.replace(/\/$/, '');
      const suffix =
        url.pathname.replace(/^\/api\/familyhub/, '') || '/';

      const response = await proxy(
        request,
        origin + '/api' + suffix + url.search,
        origin
      );

      return addCors(response, request, env);
    }

    // /familyhub/* keeps the existing same-origin FamilyHub proxy.
    if (url.pathname === '/familyhub' ||
        url.pathname.startsWith('/familyhub/')) {
      if (!configured) {
        return addCors(
          new Response(
            'FamilyHub backend is not configured for this test deployment.',
            {
              status: 503,
              headers: {
                'content-type': 'text/plain; charset=utf-8'
              }
            }
          ),
          request,
          env
        );
      }

      const origin = configured.replace(/\/$/, '');
      const suffix =
        url.pathname.replace(/^\/familyhub/, '') || '/';

      const response = await proxy(
        request,
        origin + suffix + url.search,
        origin
      );

      return addCors(response, request, env);
    }

    // Everything else remains the existing static website.
    return env.ASSETS.fetch(request);
  }
};
