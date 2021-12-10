import 'package:flutter/material.dart';
import 'recent.dart';
import 'switchcommunity.dart';
import 'faq.dart';
import 'ontap.dart';
class Draw extends StatefulWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( backgroundColor: Colors.transparent),
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: showDrawer(),
      ),
    );
  }
  Widget showDrawer(){
    return Drawer(
      child: Container(
        
      //  margin: EdgeInsets.all(18),
      //  padding: EdgeInsets.all(20),
        color: Color(0xffebf8f8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(
            height: 80,
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Edit()),
                  );
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/BB.jpeg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Text("BalaKrishna",style: TextStyle(
                  color: Color(0xff51535a),
                  fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 25),
              child: Text("Hero,Tollywood",style: TextStyle(
                color: Color(0xff848a8e),
                // fontWeight: FontWeight.bold
              ),),
            ),

            SizedBox(height: 10,),

            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Recentactivity()),
                            );
                          }, icon: Icon(Icons.access_time,color: Color(0xff6dcbcd),)),
                          Text("Recent activity",style: TextStyle(color: Color(0xff51535a),fontWeight: FontWeight.bold,fontSize:15),),

                        ],
                      ),
                    ),
                    // divider
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>SwitchC()),
                            );
                          }, icon: Icon(Icons.people,color: Color(0xff6dcbcd),)),
                          Text("Switch community",style: TextStyle(color: Color(0xff51535a),fontWeight: FontWeight.bold,fontSize:15),),

                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>SwitchC()),
                            );
                          }, icon: Icon(Icons.settings_applications_rounded,color: Color(0xff6dcbcd),)),
                          Text("Seetings",style: TextStyle(color: Color(0xff51535a),fontWeight: FontWeight.bold,fontSize:15),),
                        ],
                      ),
                    ),
                    // divider
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>FAQ()),
                            );
                          }, icon: Icon(Icons.contact_support_outlined,color: Color(0xff6dcbcd),)),
                          Text("FAQ",style: TextStyle(color: Color(0xff51535a),fontWeight: FontWeight.bold,fontSize:15),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )



          ],
        ),
      ),

    );
  }
}
