# CIELO Mobile Application

Flutter + Firebase Mobile Architecture

---

## 📌 Project Overview

CIELO is a scalable Flutter-based mobile application built with Firebase integration and environment-based configuration. This repository contains the foundational architecture for the mobile app, including environment management, Firebase setup stubs, CI configuration, and clean folder structure.

This setup supports:

* iOS-first builds
* Android compatibility
* Apple Silicon (M1/M2) support
* Environment-based configuration (dev / prod)
* CI pipeline validation

---

## 🏗 Tech Stack

* Flutter
* Dart
* Firebase (Core, Auth, Firestore, Remote Config)
* flutter_dotenv (Environment Management)
* GitHub Actions (CI)

---

## 📂 Project Structure

```
lib/
 ├── core/
 │    ├── colors.dart
 │    ├── theme.dart
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

* iOS simulator launches successfully
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

## 🛡 Security Notes

* Environment variables are never committed
* Firebase credentials must remain local
* Use `.env.example` as reference only

---

## 🧩 Current Status (Card 3.1)

* Flutter project bootstrapped
* Clean folder architecture created
* Environment system implemented
* Firebase stubs added
* iOS & Android builds confirmed
* CI pipeline configured

---

## 📌 Next Development Phases

* Card 3.2 — Navigation System (Tab + Stack + Modal)
* Card 3.3 — Firebase SDK Integration
* Card 3.4 — Secure User Profile Creation & Storage

---

## 👤 Maintainer

CIELO App Development Team

---

End of README
