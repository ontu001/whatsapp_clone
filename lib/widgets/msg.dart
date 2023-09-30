import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messageR extends StatelessWidget {
  final text;
  messageR({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
                padding: EdgeInsets.only(left: 15, top: 12),
          margin: EdgeInsets.all(5),
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
          ),
          child:
              Text(text, style: TextStyle(fontSize: 17, color: Colors.white)),
        )
      ],
    );
  }
}
