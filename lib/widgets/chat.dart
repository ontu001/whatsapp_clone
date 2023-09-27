import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/inbox.dart';

class Chat extends StatelessWidget {
  final name;
  final IconData icon;
  final message;
  final String imgurl;
  Chat({
    required this.name,
    required this.icon,
    this.message,
    required this.imgurl,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => InboX()));
      },
      selectedTileColor: Colors.grey.shade100,
      titleTextStyle: TextStyle(color: Colors.white),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(imgurl),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '9:49',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Icon(
            icon,
            color: Colors.red,
          ),
          Text(
            message,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          )
        ],
      ),
    );
  }
}
