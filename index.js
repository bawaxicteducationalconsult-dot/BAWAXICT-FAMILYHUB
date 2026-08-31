```javascript
export async function onRequest(context) {
  const url = new URL(context.request.url);
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

  return new Response(
    JSON.stringify({
      ok: true,
      message: 'FamilyHub API function reached'
    }),
    {
      status: 200,
      headers: {
        'content-type': 'application/json; charset=utf-8'
      }
    }
  );
}
```
