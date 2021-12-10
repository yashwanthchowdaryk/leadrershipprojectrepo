import 'package:flutter/material.dart';
import 'package:project_leadership/recent.dart';
import 'package:project_leadership/routes.dart';
import 'package:project_leadership/switchcommunity.dart';
import 'faq.dart';
import 'feed.dart';
import 'people.dart';
import 'stories.dart';
import 'metting.dart';
import 'registered.dart';
import 'draw.dart';
import 'notification.dart';
import 'message.dart';
import 'storiesui.dart';
class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  refresh(){
    setState(() {

    });

}

  int currentIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final screens = [
    Feed(),
    Peoples(),
    //Story(),
    HomeScreen(),
    //Sui(),
    Mettings(),
    Reg()
  ];

  @override
  Widget build(BuildContext context) {
   // currentIndex == 2? null :
    return Scaffold(
      key: _key,
      // appBar:  AppBar(
      //
      //   leading: CircleAvatar(
      //     radius: 5,
      //     backgroundColor: Colors.white,
      //     child:IconButton(onPressed: (){
      //    // showDrawer();
      //      print("hello");
      //      _key.currentState!.openDrawer();
      //
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => Draw()),
      //       // );
      //
      //
      //
      //     }, icon: Icon(Icons.person,color: Colors.black,))
      //   ),
      //   title: Text(
      //     "Memphis Talks",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => Notfi()),
      //           );
      //         },
      //         icon: Icon(
      //           Icons.notifications_none_sharp,
      //           color: Color(0xff8e8d8d),
      //         )),
      //     IconButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => Mes()),
      //           );
      //         },
      //         icon: Icon(
      //           Icons.message,
      //           color: Color(0xff8e8d8d),
      //         )),
      //   ],
      //   backgroundColor: Colors.white,
      //
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,

        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor:Color(0xff58c4c6) ,
        items: [
        BottomNavigationBarItem(icon:Icon(Icons.home ,),
        label: "Feed",),
        BottomNavigationBarItem(icon:Icon(Icons.people_rounded),
            label: "People"),
        BottomNavigationBarItem(icon:Icon(Icons.stop_circle),
            label: "Stories"),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined),
            label: "Meetings"),
        BottomNavigationBarItem(icon:Icon(Icons.event_available),
            label: "Events"),
      ],

      ),
      drawer:
      Container(
        width: MediaQuery.of(context).size.width*0.75,
        height:  MediaQuery.of(context).size.height,
       // margin: EdgeInsets.only(bottom:5),
      //  padding: EdgeInsets.only(bottom: 10),


        decoration: BoxDecoration(
         // borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
         // borderRadius: BorderRadius.horizontal(right: Radius.circular(10),left: Radius.circular(10)),
          borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight: Radius.circular(10)),
          color: Color(0xffebf8f8),
        ),

        //  margin: EdgeInsets.all(18),
        //  padding: EdgeInsets.all(20),
       // color: Color(0xffebf8f8),
      //  color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/BB.jpeg"),
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
                //color: Colors.white,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                  // borderRadius: BorderRadius.horizontal(right: Radius.circular(10),left: Radius.circular(10)),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                  color: Colors.white,
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){    Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Recentactivity()),
                          );}, icon: Icon(Icons.access_time,color: Color(0xff6dcbcd),)),
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
                          IconButton(onPressed: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>SwitchC()),
                          );}, icon: Icon(Icons.people,color: Color(0xff6dcbcd),)),
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.settings_applications_rounded,color: Color(0xff6dcbcd),)),
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
                          IconButton(onPressed: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>FAQ()),
                          );}, icon: Icon(Icons.contact_support_outlined,color: Color(0xff6dcbcd),)),
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
  Widget showDrawer(){
    print("yashwanth");
    return Container(
      color: Colors.teal,
      child:

      Drawer(

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
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/BB.jpeg"),
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
                            );}, icon: Icon(Icons.people,color: Color(0xff6dcbcd),)),
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
                            IconButton(onPressed: (){}, icon: Icon(Icons.settings_applications_rounded,color: Color(0xff6dcbcd),)),
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
                            );}, icon: Icon(Icons.contact_support_outlined,color: Color(0xff6dcbcd),)),
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

      ),
    );
  }

}
