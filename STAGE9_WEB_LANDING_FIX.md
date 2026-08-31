# Stage 9 Web Landing Fix

## What was fixed

The Cloudflare web landing page (`site/index.html`) has been rebuilt from the supplied BAWAXICT dashboard mockup as the **web-version landing/dashboard prototype**.

### Implemented
- BAWAXICT green/orange dashboard visual language.
- Desktop sidebar navigation matching the supplied prototype.
- Responsive mobile off-canvas sidebar with hamburger menu.
- Top brand/header and member profile area.
- Welcome/connection hero section.
- Quick Actions cards for Community, Services, Learning and Community Updates.
- What's Happening section with real navigation destinations instead of dead links.
- Connection Status and Community Access cards suitable for the web version.
- Shortcuts and Explore Community banner.
- BAWAXICT footer/contact/social area.
- Member name can be supplied with `?name=...` or picked up from existing browser local storage keys.
- Logout clears the local member-name values and returns to the community entry page.

## Important web-version separation

The hotspot purchase/ticket CTA has been removed from the web landing page. There is **no `tickets.html` link, "Get Internet" button, or internet-package section on `site/index.html`**.

The existing `site/tickets.html` file is intentionally retained in the package for the separate MikroTik/hotspot side of the project and is not linked from the web landing page.

## Cloudflare structure

This package is arranged with the Cloudflare deploy directories at repository root:

```text
/functions/
/site/
```

The existing backend and Android compatibility project are also retained for the Stage 9 integration work.

## Next test

Deploy this commit to the same Stage 9 Cloudflare test URL and verify:

1. Desktop landing matches the supplied dashboard direction.
2. No hotspot ticket button is visible anywhere on the web landing page.
3. Sidebar links open the existing pages.
4. Quick Action cards work.
5. Mobile hamburger opens/closes the sidebar.
6. `?name=John` displays John in the greeting as a prototype check.
7. Community entry still reaches the FamilyHub web surface.

Do not declare this production or MikroTik-approved until the visual/functional check passes.
