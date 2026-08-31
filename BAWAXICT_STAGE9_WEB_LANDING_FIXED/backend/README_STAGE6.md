# FamilyHub Stage 6 — Hotspot-User Engagement Rewards

## Reward rule
- Only users verified as **hotspot users** are reward-eligible.
- Eligibility is a property of the FamilyHub account (`hotspot_user=1`), not a temporary Wi-Fi connection timer.
- Engagement accumulates across separate visits/sessions.
- The threshold is **5 accumulated hours** of active FamilyHub engagement.
- Passive time is not automatically counted: engagement is credited only when the client sends an authenticated activity signal or the user performs a chat action. Each gap is capped at 3 minutes to reduce idle-tab farming.
- Every completed 5-hour tier is automatically awarded. There is no user claim button.

## Winner announcement
When a reward is earned, FamilyHub emits a public `reward.won` event. The community page can display:

> 🎉 USER just won a 1GB free browsing ticket! You too can be the next winner — keep engaging on FamilyHub for 5 accumulated hours.

Hidden-profile users are announced as **“A FamilyHub hotspot user”** in public reward announcements.

## Ticket fulfilment
Stage 6 records the reward as `won` immediately. Actual voucher generation/delivery is intentionally left for the later MikroTik-cloud integration stage. This prevents the reward system from being tied to a router that has not yet been connected to the cloud backend.

## Hotspot verification
A trusted MikroTik/cloud integration can mark a FamilyHub account as hotspot-eligible using:

`POST /api/hotspot/verify`

with the `X-Hotspot-Secret` header. The secret is supplied through `BAWAXICT_HOTSPOT_SHARED_SECRET`; it is never stored in frontend code.

## API additions
- `POST /api/engagement` — authenticated activity signal and reward evaluation.
- `POST /api/hotspot/verify` — trusted server-to-server hotspot eligibility marking.
- `GET /api/rewards/mine` — includes eligibility and reward progress.
- `GET /api/rewards/announcements` — recent winner announcements.
- Real-time `reward.won` event — public winner announcement.

## Future storage upgrade
Media retention remains 3 days until larger storage is available. This reward stage does not change that policy.
