import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class gRoup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 42, 49),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('asset/wgroup.png'),


SizedBox(height: 15,),


          Text('Stay connected with a community',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),


SizedBox(height: 10,),
          Padding(
            
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you\'re added to will apear here',style: TextStyle(color: Colors.white,fontSize: 13.2,overflow: TextOverflow.clip,inherit: true,),)),



SizedBox(height: 10,),


            Text('See example communities>',style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 68, 168, 120)),),



SizedBox(height: 20,),

SizedBox(
  height: 40,
  width: 400,
  child:   ElevatedButton(
    
    style: ButtonStyle(
      
      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 68, 168, 120),),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
    ),
    
    onPressed: (){}, child: Text('Start your community',style: TextStyle(color: Colors.black),)),
)


        ],
      ),
    );
  }
}
