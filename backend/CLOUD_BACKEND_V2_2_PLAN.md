# BAWAXICT FamilyHub Backend V2.2 Cloud Foundation

## Purpose
This is a security/architecture baseline for moving FamilyHub from the old laptop/local HTTP server to a cloud backend shared by the Cloudflare website, MikroTik hotspot portal, and future Android app.

## Authentication model
- First Community entry calls `POST /api/join` with the chosen username and a generated client/device id.
- The server creates a random session token and returns it in an `HttpOnly; Secure; SameSite=Lax` `fh_session` cookie.
- Returning clients call `GET /api/session`; the server authenticates from the cookie, not from a browser-readable device id.
- `POST /api/logout` expires the cookie.
- Legacy username+token request bodies remain temporarily supported for compatibility, but new clients should use the cookie session.
- The old `/api/device` device-id-only token recovery must NOT be used as production authentication; it is retained only for compatibility during migration.

## CORS
`BAWAXICT_ALLOWED_ORIGINS` is a comma-separated allowlist. Wildcard `*` is no longer emitted. Credentialed cross-origin requests receive an exact allowed origin plus `Access-Control-Allow-Credentials: true`.

Prefer same-origin Cloudflare routing (`/api/*`) for the web client. The Android client may use the API origin directly with its cookie jar.

## Secrets
- `BAWAXICT_ADMIN_KEY` must be supplied as a Cloud secret/environment variable in production.
- The packaged `admin_key.txt` is blank.
- The default admin key is disabled.
- `OPENAI_API_KEY` must be stored as a cloud secret and never shipped to browser/app code.

## Cloudflare direction
Cloudflare now supports Python Workers, including FastAPI and access to D1/KV/Durable Objects through Workers bindings. Python Workers are currently open beta. The existing socket-based `http.server` + SQLite implementation is therefore treated as the reference implementation, not as the final cloud runtime. The next migration step is to move the API handlers to a Worker/FastAPI-compatible request model and move persistent data from local SQLite to Cloudflare D1 (or another managed database if required).

## Client compatibility
The same API contract is intended for:
1. Cloudflare web client
2. MikroTik hotspot client
3. Android client

No client should depend on the hotspot IP, `familyhub.chat:8080`, or a local laptop address.
