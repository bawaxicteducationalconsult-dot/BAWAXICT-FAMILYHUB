# BAWAX ICT FamilyHub Backend V2.4 — Stage 3 Community Chat

Stage 3 builds the authenticated Community Chat layer on the Stage 2 identity/session foundation.

## Included
- Secure cookie-based session authentication from Stage 2.
- Community history endpoint with incremental `since` support and `latestId`.
- Existing 5-hour public message retention cleanup.
- Abuse/insult filtering and moderation flags.
- Per-user community message rate limit: 5 messages per 10 seconds.
- Online/heartbeat model retained for web and Android compatibility.
- Same REST API contract for web, Android and later MikroTik-connected clients.

## Test status
- Python syntax: PASS
- Health endpoint: PASS
- Join + secure session cookie: PASS
- Community post using session cookie: PASS
- Full/incremental history: PASS
- Rate limiting: PASS
- Logout invalidation: PASS

## Production note
This is a test/reference build. Cloud deployment, managed database, production secret management and real-time transport remain later integration tasks.
