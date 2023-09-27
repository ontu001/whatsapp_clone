import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/widgets/chat.dart';

class cHats extends StatelessWidget {
  List<String> name = ['Aomy', 'Baki', 'Labib', 'piyas', 'Nishat', 'Asifs'];

  List<IconData> icn = [
    Icons.missed_video_call,
    Icons.mic,
    Icons.voicemail,
    Icons.call,
    Icons.send,
    Icons.missed_video_call,
  ];

  List<String> msg = [
    'Missed video call',
    'send a audio file',
    'Do you have class today?',
    'Nice to meet you',
    'Today we have ameeting',
    'hello',
  ];

  List<String> img = [
    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png',
    'https://thumbs.dreamstime.com/z/fashion-young-man-suit-posing-looking-to-side-grey-background-fashion-young-man-suit-posing-looking-to-side-162927324.jpg',
    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png',
    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png',
    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png',
    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 42, 49),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 68, 168, 120),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Chat(
            name: (name[index]),
            icon: (icn[index]),
            message: (msg[index]),
            imgurl: (img[index]),
          );
        },
      ),
    );
  }
}