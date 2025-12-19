# Digia app

Digia is a sample **Server-Driven UI (SDUI)** Flutter app that depends on the `digia_ui` design system package and bundles Digia-specific assets.

It represents a more “real” production-style build compared to the plain `vanilla` app and the Shorebird-enabled app in this repo, because most of the UI is rendered from server-provided configuration rather than being hard-coded in the client.

## Key characteristics

- **Server-Driven UI (SDUI)**
  - UI is described by configurations coming from Digia Studio and rendered by `digia_ui` at runtime.
  - Most UI & behavior changes can be shipped instantly from the server without new store releases.
- **Package dependency**
  - Uses `digia_ui` from Git (see `pubspec.yaml`).
- **Assets**
  - Bundles app configuration and scripts from `assets/` (for example `appConfig.json`, `functions.js`).
- **Distribution**
  - Shipped as a standard Flutter binary to the stores; after that, UI changes flow via SDUI rather than new binaries.

## Run locally

```bash
cd digia
flutter pub get
flutter run
```

## Build for release

Examples (run from `digia/`):

```bash
flutter build apk         # Android
flutter build ios         # iOS (on macOS with Xcode)
flutter build web         # Web
```

You can clean and rebuild with:

```bash
flutter clean
flutter build <platform>
```

## How this compares

- **Versus Shorebird**: Digia uses SDUI (server-driven configs rendered by `digia_ui`) instead of binary-level code-push; most updates happen entirely from the server.
- **Versus Vanilla**: this app adds `digia_ui`, SDUI, and real assets on top of a baseline Flutter template, closer to a production configuration.
