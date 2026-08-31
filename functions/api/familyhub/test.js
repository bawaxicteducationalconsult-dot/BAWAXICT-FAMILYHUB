```javascript
export async function onRequest() {
  return new Response('API FUNCTION WORKS', {
    status: 200,
    headers: {
      'content-type': 'text/plain; charset=utf-8'
    }
  });
}
```
