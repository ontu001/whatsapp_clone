import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/custom_form.dart';
import 'package:whatsapp_clone/widgets/message.dart';
import 'package:whatsapp_clone/widgets/msg.dart';

class InboX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 31, 37),
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
              backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D5603AQHRt3DD4S0S8g/profile-displayphoto-shrink_100_100/0/1677103156866?e=1701302400&v=beta&t=RkN3svSvJWfTSVgY5lVE2QGtej89fhfV0XaGWg85TSo'),
            ),
            SizedBox(width: 4,),
            Text(
              'Rohan',
              style: TextStyle(color: Colors.white,fontSize: 15),
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
              scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 10,),
            
            
            messageL(text: 'hello'),
            messageL(text: 'how are you?'),
            messageL(text: 'hows your day'),

            messageR(text: 'hi there'),
            messageR(text: 'Im fine what about you?'),
            messageR(text: 'yeah everything is going good')
          ],
        )),
        Container(
          margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
          child: Row(
            children: [
              Expanded(
                  child: customForm(
                hintText: 'Message',
                obsecureText: false,
                suffixIcon: Icon(Icons.link),
                prefixIcon: Icon(Icons.face),
              )),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 45, 120, 84),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      )))
            ],
          ),
        )
      ]),
    );
  }
}
