import 'package:all_o_2024/views/authentication/login/login_view.dart';
import 'package:all_o_2024/views/authentication/register/register_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:all_o_2024/views/home/home_view.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (BuildContext context) => const HomeView(),
  '/login': (BuildContext context) => const LoginView(),
  '/register': (BuildContext context) => const RegisterView(),
};
