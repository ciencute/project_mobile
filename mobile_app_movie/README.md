# mobile_app_movie

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# project_mobile_app_movie
mobile font end movie app code by Flutter 2.8.0
# Build Android
## run Run command before build
1. flutter clean
2. flutter pub get
3. flutter pub run build_runner build --delete-conflicting-outputs
# Build IOS
## run Run command before build
1. flutter clean
2. flutter pub get
3. cd ios
4. delete Podfile.lock
5. pod install
6. flutter pub run build_runner build --delete-conflicting-outputs