Digia vs Shorebird comparison
=============================

This repo holds three Flutter apps to compare different update and rendering models:

- **Digia**: production-style **Server-Driven UI (SDUI)** app that depends on the `digia_ui` package and bundles assets.
- **Shorebird**: a mostly vanilla Flutter app, configured for Shorebird code-push.
- **Vanilla**: a plain Flutter template (no Digia UI, no Shorebird) used as a baseline.

### Layout

- `digia/`: Digia UI example app with assets and some build outputs checked in for reference.
- `shorebird/`: Flutter app configured with Shorebird (`shorebird.yaml`, app_id `6521a64c-a580-4ff4-b616-49753ad3b617`).
- `vanilla/`: plain Flutter app created with `flutter create`, used as a clean baseline.

### Quick start

- **Prereqs**
  - Flutter SDK installed and on `PATH`.
  - Shorebird CLI installed for the Shorebird app (`shorebird` command available).

- **Run Digia**
  - `cd digia`
  - `flutter pub get`
  - `flutter run`

- **Run Shorebird (dev)**
  - `cd shorebird`
  - `flutter pub get`
  - `flutter run`

- **Run Vanilla**
  - `cd vanilla`
  - `flutter pub get`
  - `flutter run`

- **Shorebird release / patch**
  - `cd shorebird`
  - `shorebird release <platform>`
  - `shorebird patch <platform>`
  - See the [Shorebird docs](https://docs.shorebird.dev) for details.

### What to compare

- **Update model**
  - **Digia**: full **Server-Driven UI (SDUI)**; UI is rendered from server configs so most changes require **zero** App Store / Play Store releases.
  - **Vanilla**: traditional store-distributed apps; updates go through App Store / Play Store review.
  - **Shorebird**: supports over-the-air code-push updates with background auto-update enabled by default.

- **Config / dependencies**
  - **Digia**: depends on `digia_ui` from Git and bundles `assets/` via `pubspec.yaml`.
  - **Shorebird**: tracks `shorebird.yaml` as an asset and is wired to Shorebird’s updater.
  - **Vanilla**: stock Flutter template with no extra dependencies or update system.

Refer to the `README.md` inside each subfolder for app-specific details and commands.