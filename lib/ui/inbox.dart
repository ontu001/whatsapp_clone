import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/custom_form.dart';

class InboX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 33, 50, 59),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.amberAccent,
            ),
            Text(
              'Rohan',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 28, 42, 49),
      body: Column(children: [
        Expanded(
            child: ListView(
          children: [
            Align(alignment: Alignment.topLeft, child: Text('hello')),
            Align(alignment: Alignment.topRight, child: Text('hello')),
          ],
        )),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
          Expanded(child: customForm(
                  hintText: 'Message',
                  obsecureText: false,
                  suffixIcon: Icon(Icons.camera_front),
                  prefixIcon: Icon(Icons.face),)),
                  SizedBox(width: 7,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send))
            ],
          ),
        )
      ]),
    );
  }
}
