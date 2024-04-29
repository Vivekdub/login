import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginpage.dart'; // Importing the login page file

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Set status bar color to transparent
  ));
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}
