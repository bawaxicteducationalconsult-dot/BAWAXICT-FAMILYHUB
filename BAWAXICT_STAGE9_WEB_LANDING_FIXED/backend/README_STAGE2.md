# BAWAX ICT FamilyHub Backend V2.3 — Stage 2

## Stage 2 scope
Account/profile and 21-day identity controls.

### Implemented
- Secure `fh_session` cookie remains the primary browser authentication mechanism.
- `GET /api/session` restores the authenticated identity.
- `GET /api/profile` now works with the secure cookie session.
- `POST /api/profile` supports privacy/hidden-state changes.
- Username changes are permitted only after the 21-day interval.
- Username uniqueness is case-insensitive.
- A successful username change resets the next 21-day change window and refreshes the identity expiry.
- `/api/device` no longer returns the session token; it is now informational compatibility data only.
- `/api/logout` invalidates the server-side session token as well as expiring the browser cookie.
- Fixed a duplicate `call_openai_ai()` declaration that caused a syntax problem in the copied baseline.

## Test status
- Python compile: PASS
- Join + secure cookie: PASS
- Session restoration: PASS
- Profile read through cookie: PASS
- Username change before 21 days: correctly rejected
- Username change after simulated 21 days: PASS
- Profile after rename: PASS
- Logout invalidates server session: PASS

## Cloud migration note
This remains a local/reference implementation for controlled testing. The production migration will move persistent data from local SQLite to a managed Cloudflare storage layer and expose the same API contract to the web, hotspot and Android clients.
