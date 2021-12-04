import 'package:flutter/material.dart';
import 'package:hadir_app/pages/main_page.dart';
import 'package:hadir_app/pages/signin_page.dart';
import 'package:hadir_app/pages/splash_page.dart';

void main(List<String> args) => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
