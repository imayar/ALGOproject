import 'package:flutter/material.dart';

import 'Screens/Sign_in/sign_in_screen.dart';
import 'Screens/Sign_up/sign_up_screen.dart';
import 'Screens/Splash/splash_screen.dart';
import 'Screens/forgot_password/forgot_password_screen.dart';
import 'Screens/login_success/login_success_screen.dart';
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
