# Vanilla app

This is a plain **vanilla** Flutter app created with `flutter create`.

It serves as the clean baseline for comparison against the **Digia** app and the **Shorebird** app in this repository.

## Key characteristics

- **No custom dependencies**
  - Uses only the core `flutter` SDK dependencies defined in `pubspec.yaml`.
- **No Digia UI**
  - Does *not* depend on `digia_ui` or bundle Digia-specific assets.
- **No Shorebird**
  - Does *not* include Shorebird configuration or OTA update support.

## Run locally

```bash
cd vanilla
flutter pub get
flutter run
```

## Build for release

From `vanilla/`:

```bash
flutter build apk
flutter build ios
flutter build web
```

## How this compares

- **Versus Digia**: this is the minimal template; Digia adds `digia_ui` and app-specific assets.
- **Versus Shorebird**: this app has no Shorebird integration and uses the standard Flutter update model only.
