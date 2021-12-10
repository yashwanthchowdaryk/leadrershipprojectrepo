import 'package:flutter/material.dart';
import 'package:project_leadership/storiesui.dart';
import 'message.dart';
import 'notification.dart';
import 'Secondpage.dart';
class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
   Bottom bottom = new Bottom();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        leading: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.white,
            child:IconButton(onPressed: (){
              // showDrawer();
              print("hello");


              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Draw()),
              // );



            }, icon: Icon(Icons.person,color: Colors.black,))
        ),
        title: Text(
          "Memphis Talks",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notfi()),
                );
              },
              icon: Icon(
                Icons.notifications_none_sharp,
                color: Color(0xff8e8d8d),
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mes()),
                );
              },
              icon: Icon(
                Icons.message,
                color: Color(0xff8e8d8d),
              )),
        ],
        backgroundColor: Colors.white,

      ),
      body: Center(
        child: Container(
          child: GestureDetector(
              onTap: (){
             //   Bottom().h;


                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Sui()),
                // );
                Navigator.pushNamed(context, '/second');
              },
              child: Text("Hello peoples",style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }


}
