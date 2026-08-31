# BAWAXICT FamilyHub Backend V2.9 — Stage 8: AI + Services

This is the Stage 8 development baseline built on the Stage 7 backend.

## Added
- Authenticated `/api/ai` endpoint.
- AI rate limiting is keyed to the authenticated FamilyHub account.
- OpenAI API key remains server-side via `OPENAI_API_KEY`.
- `OPENAI_MODEL` is configurable; default is `gpt-5.6-luna`.
- Public `/api/services` catalog.
- Authenticated `/api/services/request` for service enquiries.
- Authenticated `/api/services/mine` for a user's own requests.
- Service catalog is seeded only when empty for development.
- Existing Community, Private Chat, Media, Real-time, Rewards, Skill Hub and Notices features are preserved.

## Production note
This remains a development/reference baseline. Before production, service administration, quotas, billing/monetization, cloud database/storage and scheduled media cleanup will be moved to the final cloud architecture.

AI requires `OPENAI_API_KEY`. Do not put this key in the browser, Android app, or public repository.

The default AI model is GPT-5.6 Luna, selected for cost-sensitive/high-volume workloads. The model remains configurable through `OPENAI_MODEL`.
