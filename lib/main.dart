import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calculator/pinlogin.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff1d4d4f),
    ));
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PinLoginPage(),
      },
    );
  }
}
