REWARDS ADMIN DASHBOARD
========================
1. Open ../admin_key.txt (next to server.py) and change the key from
   "change-me-admin-key" to a private password only you know.
2. Restart the server (python server.py) so it picks up the new key.
3. Open http://familyhub.chat:8080/admin/rewards on the admin's phone
   or laptop, enter the same key, and leave the tab open — it polls
   every 15 seconds and will badge + beep when a user qualifies.
4. When a user qualifies:
   a. Generate a real 1GB hotspot voucher in MikroTik User Manager
      (or your normal ticket process) as you do today.
   b. Click "Mark as sent" next to that user on the dashboard and
      paste the voucher code/PIN into the note box.
   c. The code is delivered straight into the user's chat as a
      congratulatory system notice — no separate message needed.
The dashboard is protected only by the shared key in admin_key.txt.
That is adequate for a small local hotspot business but is not
enterprise-grade auth — do not reuse this key anywhere sensitive,
and treat the dashboard URL as admin-only information.

ADMIN NOTIFICATIONS: REPORTED ISSUES + FILTERED MESSAGES
==========================================================
The same dashboard (http://familyhub.chat:8080/admin/rewards) now has
three tabs, all polling every 15 seconds with the same badge/beep and
an optional browser notification (click "Enable browser alerts" and
allow the permission prompt):

1. 🏆 Reward Winners — unchanged, as above.

2. 🚩 Reported Issues — anything submitted from the "Report an Issue"
   page on the hotspot portal (report.html, works even for visitors
   who never joined chat) or the 🚩 Report button inside Community
   Chat (attaches the offending message + member automatically).
   Click "Mark resolved" and add an optional note; if the reporter is
   a known chat member, the note is delivered straight into their
   chat, the same way reward vouchers are.

3. 🚫 Filtered Messages — every message the abuse filter blocked
   automatically before it could reach the forum or a private chat.
   Nothing here was ever seen by other members. Use this to spot
   repeat offenders; "Mark reviewed" just clears it off the list.

ABUSE / INSULT FILTER
======================
server.py checks every forum and private message against a keyword
list (BLOCKED_TERMS, near the top of server.py) before it is stored.
A match rejects the message outright — the sender sees an inline
warning and nothing is posted — and the attempt shows up under
"🚫 Filtered Messages" above. It is a plain keyword filter, not an
AI classifier, so:
  - it will catch obvious profanity/insults, including common
    spaced-out or leetspeak workarounds (e.g. "f u c k", "a$$hole")
  - it can still be tricked by creative misspellings, and can
    occasionally over-match a word that merely contains a blocked
    substring — review "Filtered Messages" occasionally and adjust
    BLOCKED_TERMS (add local Pidgin/Yoruba/Igbo terms, remove
    anything too broad) to fit your community.
