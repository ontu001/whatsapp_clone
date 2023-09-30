import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customForm extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final Icon suffixIcon;
  final Icon prefixIcon;
  final keyboardtype;

  const customForm(
      {this.controller,
      required this.hintText,
      required this.obsecureText,
      required this.suffixIcon,
      this.keyboardtype,
      required this.prefixIcon});

  @override
  Widget build(Object context) {
    return Container(
      padding: EdgeInsets.only(left: 13, right: 13, top: 0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 20, 31, 37),
          borderRadius: BorderRadius.circular(22)),
      child: TextField(
        controller: controller,
        keyboardType: keyboardtype,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.grey,
            suffixIconColor: Colors.grey),
      ),
    );
  }
}
