import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messageL extends StatelessWidget {
  final text;
  messageL({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, top: 12),
          margin: EdgeInsets.all(5),
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 20, 31, 37),
          ),
          child:
              Text(text, style: TextStyle(fontSize: 17, color: Colors.white)),
        )
      ],
    );
  }
}
