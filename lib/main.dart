import 'package:flutter/material.dart';
import 'package:nimihub/routes.dart';
import 'package:nimihub/screens/intro_screen/intro_screen.dart';
import 'package:nimihub/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nimihub',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: IntroScreen.routeName,
      routes: routes,
    );
  }
}
