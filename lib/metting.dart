import 'package:flutter/material.dart';
import 'setavalibility.dart';
import 'message.dart';
import 'notification.dart';

class Mettings extends StatefulWidget {
  const Mettings({Key? key}) : super(key: key);

  @override
  _MettingsState createState() => _MettingsState();
}

class _MettingsState extends State<Mettings> {
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
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
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        // physics: ScrollPhysics(),
        child: Container(
          color: Color(0xffebf8f8),
          width: screenWidth,
          // height: screenHeight,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "You have 6 recommendations",
                    style: TextStyle(color: Color(0xff51535a)),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                  color: Color(0xff999b9b),
                )
              ],
            ),
            // Expanded(
            //   flex: 1,
            //  child:
            Container(
              height: screenHeight! / 2.2,
              //  color: Colors.purple,
              child: ListView.builder(
                  itemCount: 13,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return
                        //Container(
                        // color: Colors.red,
                        // width: screenWidth! / 3,
                        // child:
                        Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 55, left: 70),
                        // padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image.asset(
                                "assets/RC.jpeg",
                                height: 150,
                                width: 250,
                                fit: BoxFit.fitWidth,
                              )),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Text(
                                  "Ramcharan",
                                  style: TextStyle(color: Color(0xff56555c)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "tollywood superstar",
                                  style: TextStyle(color: Color(0xffc3c2c2)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Color(0xff82d3d4),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: Text(
                                      "Schedule a 1:1",
                                      style:
                                          TextStyle(color: Color(0xff82d3d4)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            //  top: 0,
                            right: 70,
                            left: 10,
                            bottom: 195),
                        width: screenWidth! / 1.3,
                        //padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 30,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.person),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    "hellofgygYGZyfytsfytqfwytdftqfdtfeqtdftefd7e32edtfwqfdxgsavytxfetwy"),
                              )),
                            ],
                          ),
                        ),
                      )
                    ]);
                    //);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: showUI(),
            )
            //  ),
            //   Expanded(child: SingleChildScrollView(child: Container(color:Colors.blue,child: showUI())))
            // Expanded(
            //   child:
            // Container(
            //       color: Colors.white,
            // height: screenHeight,
            // child:
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20),
            //   child: showUI(),
            // ),
            // ),
            // )
          ]),
        ),
      ),
    );
  }

  Widget showUI() {
    return Container(
      color: Colors.white,
      //height: screenHeight!/2.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // color: Colors.amber,
            width: 60,
            // alignment: Alignment.topCenter,
            margin: EdgeInsets.only(bottom: 70),
            child: Card(
              color: Color(0xfff1f1f1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Or",
                style: TextStyle(color: Colors.grey),
              )),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  "assets/RC.jpeg",
                  height: 150,
                  width: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    Text(
                      "tell to community",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Set()),
                        );
                      },
                      child: Text(
                        "Set your availability",
                        style: TextStyle(color: Color(0xff82d3d4)),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
