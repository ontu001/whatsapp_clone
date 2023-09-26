import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cHats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 42, 49),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 68, 168, 120),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: Column(children: []),
    );
  }
}
