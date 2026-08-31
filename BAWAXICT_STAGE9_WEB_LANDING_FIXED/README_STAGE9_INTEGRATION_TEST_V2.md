# BAWAX ICT FamilyHub — Stage 9 Integration Test V2

This release combines the Stage 9 Cloudflare/Web integration test with the Android compatibility client.

## Test clients
- Web: Cloudflare-ready frontend + Functions proxy
- Android: compatibility WebView client using the same HTTPS web/API surface
- MikroTik: intentionally excluded from this test; integration remains Stage 13

## Android test goals
1. Open the same HTTPS Cloudflare test URL used by the web client.
2. Create/restore a FamilyHub session.
3. Close/reopen the app and verify session restoration.
4. Test community and private chat against the same backend.
5. Test real-time events/notifications.
6. Test image/voice upload limits and 3-day media expiry behavior.
7. Switch Wi-Fi to mobile data and verify the account remains the same.
8. Log out and verify the session is invalidated.

## Configuration
Set the final HTTPS Cloudflare URL in:
`web/HOTSPOT1/cloudflare/CLOUDFLARE_DEPLOY/app/src/main/java/net/bawaxict/familyhub/AppConfig.java`

The Android client intentionally rejects cleartext HTTP/mixed content.

## Important
This is a compatibility test client, not the final polished Android application. No APK is claimed in this package; build it with Android Studio/Gradle after setting the test URL.
