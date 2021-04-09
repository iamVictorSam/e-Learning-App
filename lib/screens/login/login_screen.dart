import 'package:flutter/material.dart';
import 'package:nimihub/screens/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Body(),
    );
  }
}
