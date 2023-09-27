import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/tabbar/calls.dart';
import 'package:whatsapp_clone/ui/tabbar/chats.dart';
import 'package:whatsapp_clone/ui/tabbar/group.dart';
import 'package:whatsapp_clone/ui/tabbar/updatess.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromARGB(255, 41, 60, 70),
          elevation: 1,
          actions: [
            IconButton(
                onPressed: () {}, icon: (Icon(Icons.camera_alt_outlined))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.search_outlined)),
            ),
            IconButton(onPressed: () {}, icon: (Icon(Icons.menu_outlined))),
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: (Icon(Icons.group_outlined)),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Updates',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        backgroundColor: Color.fromARGB(255, 28, 42, 49),
        body: TabBarView(children: [gRoup(), cHats(), uPdate(), cAlls()]),
      ),
    );
  }
}
