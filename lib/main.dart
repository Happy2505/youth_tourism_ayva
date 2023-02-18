import 'package:flutter/material.dart';
import 'auth_screen/auth_start_widget.dart';
import 'home_screen/home_widget.dart';
import 'main_screen/main_widget.dart';
import 'navigation/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthStartWidget(),
        '/home': (context) => const HomePage(),
      },
      // home: AuthStartWidget(),
    );
  }
}
