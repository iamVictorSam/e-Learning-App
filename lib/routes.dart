import 'package:flutter/material.dart';
import 'package:nimihub/screens/complete_profile/complete_profile_screen.dart';
import 'package:nimihub/screens/forgot_password/forgot_password_screen.dart';
import 'package:nimihub/screens/home/home_screen.dart';
import 'package:nimihub/screens/intro_screen/intro_screen.dart';
import 'package:nimihub/screens/login/login_screen.dart';
import 'package:nimihub/screens/login_success/login_success_screen.dart';
import 'package:nimihub/screens/otp/otp_screen.dart';
import 'package:nimihub/screens/sign_up/sign_up_screen.dart';
import 'package:nimihub/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
