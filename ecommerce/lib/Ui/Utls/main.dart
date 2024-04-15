import 'package:flutter/material.dart';
import 'AppTheme.dart';
import '../Auth/Login/Cubit/LoginScreen.dart'; // Import the LoginScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route App',
      theme: AppTheme.getAppTheme(),
      home: LoginScreen(), // Set the initial route to LoginScreen
    );
  }
}
