# Send Money App

A Flutter-based Send Money application that allows users to log in, check their wallet balance, send money, and view transaction history.

## 📌 Features

- **User Authentication**: Login screen with validation
- **Wallet Balance**: Display available balance
- **Send Money**: Transfer funds securely
- **Transaction History**: View past transactions
- **Offline Mode Support**
- **Unit Tests** for core functionalities

## 📱 Screens

1. **Login Screen** - User authentication form
2. **Wallet Screen** - Displays user balance
3. **Send Money Screen** - Allows fund transfers
4. **Transaction History** - List of past transactions

## 🛠️ Tech Stack

- **Flutter** (Dart)
- **State Management**: Provider / Riverpod
- **Networking**: Dio
- **Storage**: Hive for local storage
- **Unit Testing**: Flutter Test, Mockito

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (Latest Version)
- Dart
- Android Studio / VS Code

### Installation

```sh
# Clone the repository
git clone https://github.com/yourusername/send_money.git
cd send_money

# Install dependencies
flutter pub get
```

### Run Application

```sh
flutter run
```

### Run Tests

```sh
flutter test
```

## 📂 Project Structure

```
lib/
├── core/
│   ├── utils/
│   ├── theme/
│   ├── network/
│   └── storage/
├── features/
│   ├── login/
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── providers/
│   ├── wallet/
│   ├── send_money/
│   ├── transactions/
├── main.dart
```

## 🧪 Testing

We use **Mockito** for unit testing. Example test:

```dart
testWidgets('Validates login form fields', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: LoginScreen()));
  await tester.tap(find.text('Login'));
  await tester.pump();
  expect(find.text('Please enter username'), findsOneWidget);
});
```

## 📜 License

This project is licensed under the MIT License.

---

Developed by **Your Name** 🚀

Meghana AM