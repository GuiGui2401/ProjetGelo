import 'package:flutter/widgets.dart';
import 'package:projetgelo/pages/BloodStockManagement.dart';
import 'package:projetgelo/pages/cart_screen.dart';
import 'package:projetgelo/pages/complete_profile_screen.dart';
import 'package:projetgelo/pages/details_screen.dart';
import 'package:projetgelo/pages/forgot_password_screen.dart';
import 'package:projetgelo/pages/login_success_screen.dart';
import 'package:projetgelo/pages/otp_screen.dart';
import 'package:projetgelo/pages/sign_in_screen.dart';
import 'package:projetgelo/pages/sign_up_screen.dart';
import 'package:projetgelo/pages/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  //InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
 // HomeScreen.routeName: (context) => const HomeScreen(),
  //ProductsScreen.routeName: (context) => const ProductsScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  //ProfileScreen.routeName: (context) => const ProfileScreen(),
  BloodStockManagement.routeName: (context) => BloodStockManagement(),
};
