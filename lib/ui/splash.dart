import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/home.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash> {
  @override

  //for shifting splash to home page
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 42, 49),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // WhatsApp logo
            Expanded(
              flex: 7, // Adjust the flex value as needed
              child: Padding(
                padding: EdgeInsets.only(top: 180, bottom: 510),
                child: Image.asset(
                  'asset/logo/whatsapp.png',
                  height: 75,
                  width: 75,
                ),
              ),
            ),
            //

            Expanded(
              flex: 1, // Adjust the flex value as needed
              child: Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(color: Colors.white),
                  ),
                  Image.asset(
                    'asset/logo/meta.png',
                    height: 40,
                    width: 110,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
