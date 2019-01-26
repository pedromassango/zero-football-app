import 'package:flutter/material.dart';
import 'package:zero/ui/pages/home_page.dart';
import 'package:zero/ui/pages/login_page.dart';
import 'package:zero/ui/pages/profile_page.dart';
import 'package:zero/ui/pages/register_page.dart';
import 'package:zero/ui/pages/splash_page.dart';

void main() => runApp(ZeroApp());

class ZeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomePage(),
        '/login': (BuildContext context) =>  LoginPage(),
        '/profile': (BuildContext context) => ProfilePage(),
        '/register': (BuildContext context) => RegisterPage(),
      },
    );
  }
}