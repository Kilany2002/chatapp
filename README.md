# chatapp

A Flutter-based chat application leveraging Firebase for authentication and real-time messaging.

## Features

- User authentication (Firebase Auth)
- Real-time chat (Cloud Firestore)
- Modern Material Design UI
- Splash screen on startup
- Asset management

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- A configured Firebase project ([see docs](https://firebase.google.com/docs/flutter/setup))
- Dart SDK (compatible with Flutter)

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/Kilany2002/chatapp.git
   cd chatapp
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Firebase setup:**
   - Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/)
   - Add Android/iOS apps as needed.
   - Download and add your `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) to the respective directories.
   - Make sure your `firebase_options.dart` is configured. You can generate this file using the [FlutterFire CLI](https://firebase.flutter.dev/docs/cli/).

4. **Run the app:**
   ```sh
   flutter run
   ```

## Project Structure

- `lib/main.dart` — App entry point, initializes Firebase, sets theme and splash screen.
- `pages/` — App pages including `SplashScreen`.
- `assets/images/` — App image assets.

## Dependencies

- `flutter`
- `firebase_core`
- `firebase_auth`
- `cloud_firestore`
- `cupertino_icons`

See `pubspec.yaml` for details.

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase for Flutter](https://firebase.flutter.dev/)

---

*This project is a starting point for building fully-featured chat applications in Flutter. Contributions welcome!*
