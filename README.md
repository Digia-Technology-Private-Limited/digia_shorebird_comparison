Digia vs Shorebird comparison
=============================

This repo holds two Flutter apps to contrast a baseline Digia build with a Shorebird-enabled build.

Contents
- `digia/`: existing Digia UI app with assets and build outputs checked in for reference.
- `shorebird/`: fresh Flutter template configured for Shorebird (`shorebird.yaml`, app_id `6521a64c-a580-4ff4-b616-49753ad3b617`).

Quick start
- Prereqs: Flutter SDK; Shorebird CLI for the Shorebird app.
- Digia app: `cd digia && flutter pub get && flutter run`
- Shorebird app (dev): `cd shorebird && shorebird flutter pub get && shorebird flutter run`
- Shorebird release/patch: `shorebird release <platform>` then `shorebird patch <platform>` (see https://docs.shorebird.dev).

What to compare
- Update model: Digia ships via app stores; Shorebird supports code-push with background auto-update enabled by default.
- Config: Digia depends on `digia_ui` and bundles app assets; Shorebird tracks `shorebird.yaml` as an asset for the updater.
- Outputs: Digia commit currently includes generated build artifacts for inspection; regenerate cleanly with `flutter clean && flutter build <platform>` if needed.