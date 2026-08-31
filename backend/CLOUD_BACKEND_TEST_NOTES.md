# BAWAX ICT FamilyHub Cloud Backend Test Notes

## Critical defect found and fixed

The original `server.py` had `do_POST()` and `_do_POST()` indented inside `call_openai_ai()`. As a result, Python's HTTP server inherited no `do_POST` handler and returned HTTP 501 for every POST request, including `/api/join`.

## Verification after fix

- `python -m py_compile server.py` — PASS
- `GET /api/health` — PASS (HTTP 200)
- `POST /api/join` — PASS (HTTP 200)
- `GET /api/device?client_id=...` — PASS (bound returning device)
- Existing token/session response is still compatible with the current chat client.

## Architecture note

The current prototype persists identity using a browser `client_id` in localStorage and a server-issued session token. This is useful for same-device returning sessions, but it is not yet the final WhatsApp-like cloud SSO/session architecture. Production cloud work must move authentication to secure HTTPS session cookies or a properly scoped token mechanism and must define allowed origins/CORS, logout/revocation, expiry, and cross-client behavior for Web and Android.

Do not expose `admin_key.txt` or use the default admin key in production.
