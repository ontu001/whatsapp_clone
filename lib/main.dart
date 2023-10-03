import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}