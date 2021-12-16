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
