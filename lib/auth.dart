import 'package:flutter/material.dart';

import 'pages/login.dart';
import 'pages/signup.dart';

class AuthApp extends StatefulWidget {
  @override
  State<AuthApp> createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
  bool _isRegister = true;

  void _toggleRegister() {
    print('Function called once');
    setState(() {
      _isRegister = !_isRegister;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _isRegister ? Login(_toggleRegister) : Signup(_toggleRegister));
  }
}
