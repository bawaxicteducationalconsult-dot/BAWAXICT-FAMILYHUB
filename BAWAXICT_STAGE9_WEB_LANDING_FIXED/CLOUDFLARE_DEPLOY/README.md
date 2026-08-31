# BAWAX ICT FamilyHub Android Compatibility Client

This is the first mobile-app compatibility client, not the final polished app. It deliberately uses the same HTTPS Cloudflare web/API surface and Android's persistent cookie store.

## Test goals
1. Sign in/create FamilyHub identity through the web flow.
2. Close/reopen the app and verify the session persists.
3. Send/receive community messages.
4. Leave Wi-Fi, switch to mobile data, reopen and verify the same account/session.
5. Verify no HTTP/mixed-content dependency.
6. Later replace the WebView UI with native screens only after the API contract is proven.

Before building, replace `START_URL` in `AppConfig.java` with the final HTTPS Cloudflare URL.
