import 'package:flutter/material.dart';
import 'package:send_money/features/login.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SendMoneyApp());
}

class SendMoneyApp extends StatelessWidget {
  const SendMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}



