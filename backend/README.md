# BAWAX ICT FamilyHub Python Server — Production v2

Server address: `192.168.6.191`
Port: `8080`
Friendly URL: `http://familyhub.chat:8080/`

## Important

Community Chat is independent of MikroTik hotspot ticket authentication.

The MikroTik walled garden/IP binding permits unauthenticated hotspot clients to reach this server.

## Start on Windows

Double-click `START-CHAT-SERVER.bat`.

Or:

`python server.py`

## Data

A fresh SQLite database is created automatically on first start. No old test database is included in this release.

## Chat behaviour

- Community/forum chat: 5-hour retention.
- Private messages: 48-hour retention.
- Community identity: 21 days.
- Online status: last 45 seconds.
- Hidden public identity does not hide a user from an existing private relationship.
- Existing private conversations remain listed with online/offline state.
- Mobile Forum and Private Chat retain a visible message composer and mobile navigation.

## Free Data Rewards program

Every user who accumulates 5 hours of **actual chatting** (forum or private
messages, spread across as many separate sessions in a day as needed — e.g.
2h morning + 1h afternoon + 2h night) automatically qualifies for a free
1GB ticket.

**How it's measured:** the server only credits time between two messages
the same user sends, capped at 3 minutes per gap. This means a user must
genuinely be chatting — leaving the tab open without talking does not earn
credit — while normal pauses to read/reply within a conversation still
count.

**What happens automatically:**
1. The moment a user crosses a 5-hour multiple, they get an in-chat
   congratulatory notice and the reward is logged as `pending`.
2. It appears immediately on the admin dashboard at
   `http://familyhub.chat:8080/admin/rewards` (protected by `admin_key.txt`).
3. A rotating "recent winners" banner appears both in the chat header and
   on the hotspot login page.

**What the admin still does manually** (no MikroTik API is wired up):
generate the real voucher in MikroTik User Manager (or your usual ticket
process), then click **Mark as sent** on the dashboard and paste the
code/PIN into the note — it's delivered straight into the user's chat.

**Configuration:**
- `admin_key.txt` (next to `server.py`) — change this from the default
  before going live; it is the only thing protecting `/admin/rewards`.
- `REWARD_THRESHOLD_SECONDS` and `ACTIVITY_GAP_CAP` in `server.py` — adjust
  the hours-per-ticket or the per-gap credit cap.
- See `admin/README.txt` for the admin's day-to-day workflow.

## V2.2 Cloud Foundation Note
This package is now a cloud-migration baseline. Do not deploy the old `http://familyhub.chat:8080` URLs as production endpoints. Authentication should use the `fh_session` secure cookie and `/api/session`. See `CLOUD_BACKEND_V2_2_PLAN.md`.
