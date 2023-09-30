import 'package:flutter/material.dart';

Widget LinK() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Color.fromARGB(255, 68, 168, 120),
      radius: 25,
      child: Icon(Icons.link),
    ),
    title: Text('Create call link'),
    subtitle: Text(
      'Share a link for your whatsApp call',
      style: TextStyle(color: Colors.grey),
    ),
    titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  );
}
