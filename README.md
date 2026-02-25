# CIELO Mobile Application

Flutter + Firebase Mobile Architecture

---

## 📌 Project Overview

CIELO is a scalable Flutter-based mobile application built with Firebase integration and environment-based configuration. This repository contains the foundational architecture for the mobile app, including environment management, Firebase setup stubs, CI configuration, clean folder structure, and global navigation structure.

This setup supports:

* Android compatibility
* Android-first builds
* Environment-based configuration (dev / prod)
* CI pipeline validation
* Structured navigation (Tab + Stack + Modal)

---

## 🏗 Tech Stack

* Flutter
* Dart
* Firebase (Core, Auth, Firestore, Remote Config)
* flutter_dotenv (Environment Management)
* go_router (Navigation)
* GitHub Actions (CI)

---

## 📂 Project Structure

```
lib/
 ├── core/
 │    ├── colors.dart
 │    ├── theme.dart
 │    ├── app_routes.dart
 │    └── app_router.dart
 │
 ├── components/
 ├── screens/
 ├── services/
 ├── context/
 └── main.dart
```

The structure is designed for feature-based scaling and modular expansion.

---

## ⚙️ Environment Configuration

This project uses environment-based configuration.

### Required Files (Not Committed)

* .env.dev
* .env.prod

These files must NOT be committed to version control.

### Example File (Committed)

`.env.example`

```
ENV=dev
FIREBASE_API_KEY=
FIREBASE_PROJECT_ID=
FIREBASE_APP_ID=
FIREBASE_MESSAGING_SENDER_ID=
```

Copy this file and create your local `.env.dev` file.

---

## 🚀 Setup Instructions

### 1️⃣ Clone the Repository

```
git clone https://github.com/ZeeshanTheCoder/cielo-app.git
cd cielo_app
```

---

### 2️⃣ Install Dependencies

```
flutter pub get
```

---

### 3️⃣ Create Environment File

Create `.env.dev` in the project root and add your Firebase credentials.

---

### 4️⃣ Run the Application (Development Mode)

```
flutter run --dart-define=ENV_FILE=.env.dev
```

---

### 5️⃣ Run Production Mode (When Ready)

```
flutter run --dart-define=ENV_FILE=.env.prod
```

---

## 🔥 Firebase Setup (Stubbed in Card 3.1)

Firebase packages are installed but configured using environment variables.

Credentials are NOT hardcoded.

Full Firebase wiring will be implemented in Card 3.3.

---

## 🧪 Build Verification

Ensure the following:

* Android emulator builds successfully
* App shows base initialization shell
* No .env files are committed

---

## 🔁 CI Configuration

GitHub Actions workflow is configured to:

* Install Flutter
* Run `flutter pub get`
* Run `flutter analyze`

CI runs automatically on:

* Pull Requests
* Push to main branch

---

## 🧭 Navigation Architecture (Card 3.2)

Navigation is implemented using `go_router` with:

* IndexedStack Tab Navigation
* Per-tab Stack Navigation
* Root-level Modal Overlays



## 🌳 Routing Tree

```
App Root (GoRouter)
│
├── 🔷 Tabs (StatefulShellRoute)
│   │
│   ├── Today (/today) — Free
│   │
│   ├── Mood (/mood) — Free
│   │     └── Sentiment (/mood/sentiment) — Pro
│   │
│   ├── Dream (/dream) — Free
│   │     └── Analysis (/dream/analysis) — Pro
│   │
│   ├── Meditate (/meditate) — Shared
│   │     └── Player (/meditate/player) — Shared
│   │
│   └── Profile (/profile) — Shared
│         ├── Edit Profile (/profile/edit) — Shared
│         └── Subscription (/profile/subscription) — Pro
│
├── 🔶 Root-Level Modals
│   ├── Onboarding (/onboarding)
│   ├── Upgrade (/upgrade)
│   └── Delete Confirm (/delete-confirm)
```


## 🔁 Navigation Rules

* All route names stored centrally in `app_routes.dart`
* Modal routes use `parentNavigatorKey`
* Back button works natively (iOS + Android)
* No gesture-only transitions
* UI buttons trigger navigation explicitly

---

## 📌 Current Status

### Card 3.1

* Flutter project bootstrapped
* Clean folder architecture created
* Environment system implemented
* Firebase stubs added
* iOS & Android builds confirmed
* CI pipeline configured

### Card 3.2

* 5-tab bottom navigation implemented
* Per-tab stack navigation functional
* Modal overlays implemented
* All routes centrally defined
* Native back button behavior confirmed
* No build errors on simulator

---

## 🛡 Security Notes

* Environment variables are never committed
* Firebase credentials must remain local
* Use `.env.example` as reference only

---

## 📌 Next Development Phases

* Card 3.3 — Firebase SDK Integration
* Card 3.4 — Secure User Profile Creation & Storage

---

## 👤 Maintainer

CIELO App Development Team

---

End of README
