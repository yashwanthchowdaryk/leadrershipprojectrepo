import 'package:flutter/material.dart';
import 'feed.dart';
import 'Secondpage.dart';
class Notfi extends StatefulWidget {
  const Notfi({Key? key}) : super(key: key);

  @override
  _NotfiState createState() => _NotfiState();
}

class _NotfiState extends State<Notfi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Bottom()),
          );
        }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Text("Notifications",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child:ListView.builder(
            itemCount: 17,
            itemBuilder: (context,int){
          return Card(
            elevation: 0,
            shadowColor: Colors.white,
            child: ListTile(
              title: Text("you have up coming meeting",style: TextStyle(color: Colors.black),),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/RC.jpeg"),
              ),
              trailing: Text("22min",style: TextStyle(color: Colors.grey),),
            ),
          );
        }),
      ),
    );
  }
}
