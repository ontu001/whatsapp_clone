import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/widgets/call.dart';
import 'package:whatsapp_clone/widgets/chat.dart';
import 'package:whatsapp_clone/widgets/link_listtile_call.dart';

class cAlls extends StatelessWidget {
  List<String> name = ['Aomy', 'Baki', 'Labib', 'piyas', 'Nishat', 'Asifs'];

  List<IconData> icn = [
    Icons.arrow_right_rounded,
    Icons.arrow_right_rounded,
    Icons.arrow_right_rounded,
    Icons.arrow_right_rounded,
    Icons.arrow_right_rounded,
    Icons.arrow_right_rounded,
  ];

  List<IconData> icn1 = [
    Icons.call,
    Icons.video_call,
    Icons.call,
    Icons.call,
    Icons.video_call_outlined,
    Icons.call,
  ];

  List<String> msg = [
    'Today, 11:34 AM',
    'Yesterday, 9:34 AM',
    'Today, 11:34 AM',
    'Today, 11:34 AM',
    'Today, 11:34 AM',
    'Today, 11:34 AM',
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
        child: Icon(Icons.call),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinK(),
          
          Padding(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 17),
            child: Text('Recent',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Call(
                  name: (name[index]),
                  icon: (icn[index]),
                  time: (msg[index]),
                  imgurl: (img[index]),
                  icon1: (icn1[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}





