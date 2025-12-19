# Shorebird app

This is a Flutter app configured for **Shorebird** over-the-air (OTA) updates.

It is intentionally close to a vanilla Flutter template, with the main difference being Shorebird integration and the `shorebird.yaml` asset.

## Key characteristics

- **Update model**
  - Built once as a Shorebird-enabled binary and then updated with Shorebird `release` and `patch` commands.
- **Config**
  - Tracks `shorebird.yaml` as a Flutter asset (see `pubspec.yaml`).
- **Baseline**
  - Mostly matches a standard `flutter create` template so you can compare it against the `vanilla` app.

## Run with Shorebird (dev)

```bash
cd shorebird
shorebird flutter pub get
shorebird flutter run
```

This uses Shorebird’s Flutter wrapper so the app is compatible with OTA patches.

## Ship a release and patch

From the `shorebird/` directory:

```bash
shorebird release <platform>   # e.g. android, ios
shorebird patch <platform>
```

Refer to the official Shorebird docs for details:

- https://docs.shorebird.dev

## How this compares

- **Versus Digia**: Shorebird adds OTA updates while Digia uses SDUI.
- **Versus Vanilla**: this app stays close to the vanilla template but adds Shorebird-specific configuration and commands.
