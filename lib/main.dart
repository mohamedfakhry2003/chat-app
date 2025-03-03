import 'package:chat_app/views/home_view.dart';
import 'package:chat_app/views/login_view.dart';
import 'package:chat_app/views/register_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:'LoginView',
        routes: {
          'LoginView' :(context) => const LoginView(),
          'RegisterView' : (context) => const RegisterView(),
          'HomeView': (context) => const HomeView(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 18, 73),
        ),
      ),
    );
  }
}
