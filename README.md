# Aqarati — Real-Estate Office App (in progress)

The Flutter client for **Aqarati**, a platform for real-estate offices to manage their listings and share them with
clients. The backend lives in [aqarati-backend](https://github.com/AmmarZeineh/aqarati-backend).

> 🚧 Early stage: this repository holds the app foundation. Feature screens are being built on top of it.

![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)
![BLoC](https://img.shields.io/badge/State-BLoC%2FCubit-blue)

## What's in place

- App shell with `go_router` routing and theming (`google_fonts`, `flutter_screenutil`)
- Network layer: Dio client, connectivity checks, typed errors with `dartz` `Either`
- Dependency injection with `get_it`
- Environment config through a `.env` file

## Architecture

```
lib/
├── app/     # app widget, config
└── core/    # di, network, routing, theme, errors, constants, enums, utils, common widgets
```

## Getting started

Create a `.env` with `BASE_URL` and `SOCKET_URL`, then:

```bash
flutter pub get
flutter run
```

## Author

**Ammar Zeineh**, Flutter Developer · [LinkedIn](https://linkedin.com/in/ammar-zeineh) · [GitHub](https://github.com/AmmarZeineh)
