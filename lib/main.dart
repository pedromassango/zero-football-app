import 'package:flutter/material.dart';
import 'package:zero/ui/pages/login_page.dart';
import 'package:zero/ui/pages/splash_page.dart';

void main() => runApp(ZeroApp());

class ZeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) =>  IntroPage(),

      },
    );
  }
}