# BAWAX ICT FamilyHub — Stage 9 Integration Test Release

This package combines the prepared Cloudflare web client with the latest tested FamilyHub backend baseline.

## Purpose

This is the FIRST integration test release. It is not production and must not replace the MikroTik hotspot files.

## Architecture

Web browser → Cloudflare site → same-origin `/api/familyhub/*` and `/familyhub/*` proxy → FamilyHub backend.

The browser does not use the old `familyhub.chat:8080` address directly.

## Required Cloudflare test setting

Set the Worker/Pages Function environment variable:

`FAMILYHUB_ORIGIN=https://YOUR-TEST-FAMILYHUB-BACKEND.example`

Do not put API keys or database credentials in the website files.

## Important deployment note

The current backend is still the tested Python reference server. Cloudflare's current platform supports Python Workers, D1, R2 and Durable Objects, but migrating this reference server to the final Cloudflare-native backend is a later cloud-foundation step. See the project roadmap.

If no FAMILYHUB_ORIGIN is configured, the proxy intentionally returns HTTP 503 instead of silently falling back to the old local HTTP server.

## Test scope

1. Landing page and navigation
2. Community Chat registration/session
3. Returning FamilyHub session
4. Private chat
5. Image/audio upload limits and expiry metadata
6. Real-time events/notifications
7. Skill Hub
8. Notices
9. AI authentication and safe secret handling
10. Services
11. Hotspot-only accumulated 5-hour rewards and winner announcements
12. Mobile browser layout
13. Logout/session invalidation

## Reward test account

Use a controlled test account marked as a hotspot-qualified user. Do not use a live customer's account for reward testing.

## Production separation

Do not upload or execute the MikroTik `.rsc` configuration from this test package against the live router. MikroTik ↔ cloud authentication is Stage 13.
