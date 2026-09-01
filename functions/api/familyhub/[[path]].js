export async function onRequest(context) {
  const url = new URL(context.request.url);
  const configured = (context.env.FAMILYHUB_ORIGIN || '').trim();
  if (!configured) return new Response('FamilyHub backend is not configured for this test deployment.', {status: 503, headers: {'content-type':'text/plain; charset=utf-8'}});
  const origin = configured.replace(/\/$/, '');
  const suffix = url.pathname.replace(/^\/api\/familyhub/, '') || '/';
  const target = origin + '/api' + suffix + url.search;
  const headers = new Headers(context.request.headers);
  headers.delete('host');
  const init = { method: context.request.method, headers, redirect: 'manual' };
  if (context.request.method !== 'GET' && context.request.method !== 'HEAD') init.body = context.request.body;
  const response = await fetch(target, init);
  return new Response(response.body, response);
}
