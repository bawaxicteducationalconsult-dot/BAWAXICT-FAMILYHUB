# BAWAXICT Smart Service — MikroTik Community Hotspot

This package turns the hotspot login into a **community digital hub** rather than a ticket-only page.

### Included
- Branded MikroTik-compatible login page using the supplied BAWAXICT logo.
- Community chat entry point.
- Advert zone for paid customer promotions.
- Internet ticket/package showcase.
- BawaxICT Smart Service Institute showcase.
- Services showcase.
- Connected-session/status page.
- Logout and error pages.
- Arcade Zone (`games.html` + `games/chaser.html`, `games/runner.html`) — offline browser games playable before ticket purchase, to keep people at the hotspot.
- MikroTik deployment notes (`mikrotik/SETUP.txt`).

### Important architecture
The **portal UI can live on the MikroTik hotspot**, but real multi-user chat needs a **local LAN server**. This is what allows people to chat even when they have not purchased internet access.

A good production layout is:

`Phone/Laptop → MikroTik AP/Router → Hotspot Portal`

and, independently of the hotspot LAN:

`Phone/Laptop → Local Chat/Advert Server → Chat + Ads + BawaxICT information`

The internet gateway remains controlled by MikroTik.

### Suggested next production phase
1. Add your exact ticket packages/prices.
2. Connect payment confirmation to automatic ticket creation.
3. Deploy the LAN chat server on a Raspberry Pi/mini PC.
4. Add a password-protected BawaxICT admin dashboard for adverts.
5. Add advert rotation and expiry dates.
6. Add moderation/reporting to community chat.
7. Add analytics: portal visits, advert impressions and ticket sales.


## FamilyHub integration
The Community Chat entry points open the Python FamilyHub server through `https://chat.bawaxict.edu.net/`; the internal IP is kept only in router/server configuration. The MikroTik integration export permits hotspot clients to reach that cloud server before internet authentication.

### Cloud migration
V7 is prepared for the cloud-hosted FamilyHub endpoint `https://chat.bawaxict.edu.net/`. Do not install V7 until DNS points to the cloud VM and the HTTPS health endpoint responds. This preserves the existing working local deployment until the cloud endpoint is verified.

## Free Data Rewards program
`login.html` includes a rotating "recent winners" banner and a `#rewards`
info panel that read live from the FamilyHub chat server
(`/api/rewards/announcements` — public, read-only, no auth). Users who
accumulate 5 hours of active chatting (forum or private, across as many
sessions as it takes in a day) automatically qualify for a free 1GB
ticket; the FamilyHub package (see its own README) tracks the time,
notifies the admin, congratulates the user, and gives the admin a
dashboard to mark the reward as sent once the real MikroTik voucher has
been generated. This portal package only displays the public banner —
no reward logic lives here, so it has nothing to configure beyond
keeping the FamilyHub URL in `community-chat.html` and `login.html` in
sync if you ever change the chat server's address.
