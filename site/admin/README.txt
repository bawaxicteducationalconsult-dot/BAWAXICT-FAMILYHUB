ADVERTISING ADMIN PLAN
======================
CURRENT LIVE ADVERTS
- assets/ads/bawaxict-print-flyer.jpg — BAWAX ICT Smart Service (own printing business) — WhatsApp 08035252255
Shown on login.html/index.html (#ads section) and as the single static ad on radvert.html.
De-Bawax Multibiz is NOT a live advert — this was an intentional project
decision, not a bug. Note: assets/ads/debawax-drinks-flyer.jpg still sits in
this package but is deliberately unreferenced by any page. Leave it unused
unless that decision changes.
To swap or add an advert: drop a new image into assets/ads/, then update the <img src> and data-link (WhatsApp/contact URL) in login.html, index.html and radvert.html to match.

For the first version, edit the advert cards directly in login.html/radvert.html.
For a scalable version, host a local admin dashboard and store adverts in SQLite/MySQL.
Recommended fields: business_name, image, headline, body, phone, link, start_date, end_date, priority, active.
Then have the portal request the current advert list from the local LAN server.

FREE DATA REWARDS PROGRAM
==========================
login.html now shows a live "Free Data Rewards" banner and info panel
(#rewards section) pulled from the FamilyHub chat server at
http://familyhub.chat:8080/api/rewards/announcements. This is read-only
on the portal side — all reward logic, the 5-hour tracking, and the
admin fulfillment dashboard live in the FamilyHub chat server package
(see its README.md and admin/README.txt for the day-to-day admin
workflow, including how to change the admin key).
If the chat server is unreachable when login.html loads (e.g. DNS for
familyhub.chat not yet resolving on that client), the banner simply
stays hidden and the info panel shows a generic message — nothing
breaks on the portal side.

REPORT AN ISSUE / NOTIFICATION RULES
======================================
login.html now has a "Report an Issue" navcard linking to report.html
— a standalone form (no chat login required) for payment, network,
reward, or abuse problems. It posts directly to the FamilyHub chat
server's open /api/report endpoint, same as the 🚩 Report button
inside Community Chat itself. Both land in the admin's "🚩 Reported
Issues" tab at http://familyhub.chat:8080/admin/rewards — see that
server's admin/README.txt for the day-to-day admin workflow.

login.html also has a "Notification Rules" navcard (#notify section)
that explains, in plain language for visitors: how reward-winner
notifications work, how issue reports reach the admin, and that
Community Chat automatically filters out abusive/insulting messages
before they post. Like the rewards banner, this is all read-only on
the portal side — the actual filtering and report handling happen in
the FamilyHub chat server package.

SKILL HUB (skills.html)
========================
A free directory sitting right beside the "Notification Rules" navcard
on login.html, called "Skill Hub" (#skillhub section explains the
concept; skills.html is the full page). Anyone can register what they
can do — phone repair, tutoring, errands, freelance work, etc. — via a
simple form (name, WhatsApp number, category, description). Listings
post straight to the FamilyHub chat server's /api/skills endpoint and
appear in the public directory immediately with status "pending".

The admin verifies genuine registrants from the FamilyHub admin
console (http://familyhub.chat:8080/admin/rewards → "🧰 Skill Hub"
tab). Each listing has a "💬 Message" button opening a private thread —
use it to ask verification questions and to request a one-time
₦1,500 activation fee that shows commitment. This conversation is
NOT visible on the public directory: the registrant (who has no chat
login) reads and replies to it from their own private page,
skill-status.html, using the reference code (e.g. SKL-1A2B3C) and
WhatsApp number they were given at submission — that page is not
linked from the public Skill Hub listing area, only shown to the
registrant right after they submit (or reachable via a low-key
"Already registered? Message the Admin" link). The applicant can also
paste a payment reference/transaction ID there after sending the
actual ₦1,500 payment proof screenshot to your WhatsApp directly (this
build has no image-upload backend). Tick "₦1,500 activation fee
received" once confirmed — Verify is blocked by the server until that
box is checked. Verify then adds a ✅ Verified badge next to that
person's name everywhere they appear; Reject hides the listing from
the public directory. Anyone still shown as unverified displays a risk notice on
their card: "Not verified by BawaxICT yet. Any transaction with this
person is at your own risk — BawaxICT is not responsible for any loss
or scam that may result."

Skill Hub is deliberately different from the Advert Zone/advertise.html:
Skill Hub is a free directory for individuals offering their own
services online; the Advert Zone is a PAID placement for physical
businesses (a school, a drinks depot, a shop) and is one of the ways
BawaxICT earns extra income from the page (alongside ticket sales) to
keep this hotspot running.
