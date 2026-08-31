# FamilyHub Stage 5 — Real-time Messaging + Notifications

## What this stage adds
- Persistent event stream table with 24-hour event retention.
- `/api/events?since=<id>` for lightweight incremental event retrieval.
- `/api/stream?since=<id>` Server-Sent Events (SSE) development transport.
- Community message events delivered to all authenticated community clients.
- Private message events delivered only to the recipient (plus a sender acknowledgement event).
- `/api/notifications?since=<id>` for durable notification retrieval.
- Existing heartbeat/online status remains available as a presence signal.
- `chat.html` now prefers secure HttpOnly session cookies instead of putting session tokens in URLs/localStorage.
- `chat.html` opens an SSE stream and refreshes the relevant conversation/unread state when events arrive.
- SSE automatically reconnects with backoff and the last received event ID.

## Cloud production path
This SSE implementation is a compatibility/development transport. For the final Cloudflare deployment, keep the same event contract but move the real-time state/connection layer to a Cloudflare Durable Object/WebSocket design. The web and Android clients should continue to consume the same logical event types.

## Event types
- `community.message`
- `private.message`
- `private.sent`

## Storage policy
- Event records are automatically removed after 24 hours by the cleanup cycle.
- This is separate from chat message retention and the Stage 4 media 3-day deletion policy.

## Testing
The Stage 5 test report verifies secure-session authentication, event retrieval, SSE delivery, community broadcast behavior, private-message targeting, notification retrieval, and JavaScript/server syntax checks.
