// Same allowlist convention as backend/server.py's ALLOWED_ORIGINS: comma-separated
// origins in the BAWAXICT_ALLOWED_ORIGINS environment variable. An Origin is only
// ever reflected (with credentials allowed) if it is on that list — never '*',
// and never an unchecked reflection of whatever the request happened to send.
function allowedOrigins(context) {
  return new Set(
    (context.env.BAWAXICT_ALLOWED_ORIGINS || '')
      .split(',')
      .map(s => s.trim().replace(/\/$/, ''))
      .filter(Boolean)
  );
}

export async function onRequest(context) {
  const origin = (context.request.headers.get('Origin') || '').replace(/\/$/, '');
  const isAllowed = origin && allowedOrigins(context).has(origin);

  if (context.request.method === 'OPTIONS') {
    const headers = {
      'Access-Control-Allow-Methods': 'GET,HEAD,POST,PUT,PATCH,DELETE,OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type, Authorization, X-Requested-With'
    };
    if (isAllowed) {
      headers['Access-Control-Allow-Origin'] = origin;
      headers['Access-Control-Allow-Credentials'] = 'true';
      headers['Vary'] = 'Origin';
    }
    return new Response(null, { status: 204, headers });
  }

  const response = await context.next();
  if (isAllowed) {
    const out = new Response(response.body, response);
    out.headers.set('Access-Control-Allow-Origin', origin);
    out.headers.set('Access-Control-Allow-Credentials', 'true');
    out.headers.append('Vary', 'Origin');
    return out;
  }
  return response;
}
