import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Wp.dart';
import 'dart:ui';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff25d366),
        //primarySwatch: MaterialColor(0xff075e54)
      ),
      debugShowCheckedModeBanner: false,
      home: whatsapp(),
    );
  }
}
