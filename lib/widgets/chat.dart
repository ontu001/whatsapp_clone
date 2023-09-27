import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final name;
  final IconData icon;
  final message;
  Chat({required this.name, required this.icon, this.message});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      selectedTileColor: Colors.grey.shade100,
      titleTextStyle: TextStyle(color: Colors.white),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png'),
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
