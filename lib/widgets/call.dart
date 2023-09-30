import 'package:flutter/material.dart';


class Call extends StatelessWidget {
  final name;
  final IconData icon;
  final IconData icon1;
  final time;
  final String imgurl;
  Call({
    required this.name,
    required this.icon,
    this.time,
    required this.imgurl, required this.icon1,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
     
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
          
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color:  Colors.blue,
                size: 20,
              ),
              Text(
                time,
                style: TextStyle(color: Colors.grey, fontSize: 13),
              )
            ],
          ),

          IconButton(onPressed: (){}, icon: Icon(icon1,color: Colors.blue,))
        ],
      ),
    );
  }
}
