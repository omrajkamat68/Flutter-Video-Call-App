# 📞 Flutter Video Calling App

A simple real-time video calling application built using **Flutter**, **Dart**, and **ZEGOCLOUD SDK**. This app allows two users to connect via a unique code for seamless video communication without any login or authentication.

## 🚀 Features

- 🔁 Real-time video calling with **low latency**
- 🔑 Unique ID-based call rooms (no sign-up/login required)
- 📱 Cross-platform support for **Android** and **iOS**
- ⚡ Smooth streaming with **ZEGOCLOUD SDK**
- 🧩 Easy-to-use interface with minimal UI

## 🛠️ Technologies Used

- **Flutter** – UI toolkit for building cross-platform apps
- **Dart** – Programming language for Flutter
- **ZEGOCLOUD SDK** – Real-time audio and video communication

## 🧑‍💻 How It Works

1. One user enters a **random code** and **starts a call**.
2. The user shares the code with the second person.
3. The second person enters the same code to **join the call**.
4. Both users are now connected in a **video call room**.

## 📦 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter-video-call-app.git
   cd flutter-video-call-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 🔑 ZEGOCLOUD Setup

To run this app, you need to:

1. Create an account at [ZEGOCLOUD](https://www.zegocloud.com/)
2. Create a project and get your **App ID** and **App Sign**
3. Replace them in the app code:
   ```dart
   const String appID = YOUR_APP_ID;
   const String appSign = 'YOUR_APP_SIGN';
   ```
