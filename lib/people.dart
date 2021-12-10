import 'package:flutter/material.dart';

import 'message.dart';
import 'notification.dart';

class Peoples extends StatefulWidget {
  const Peoples({Key? key}) : super(key: key);

  @override
  _PeoplesState createState() => _PeoplesState();
}

class _PeoplesState extends State<Peoples> {
  final myController = TextEditingController();

  double? screenwidth;

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        // appBar: AppBar(
        //   leading: CircleAvatar(
        //     radius: 5,
        //     backgroundColor: Colors.white,
        //     child: Icon(
        //       Icons.person,
        //       color: Colors.black,
        //     ),
        //   ),
        //   title: Text(
        //     "Memphis Talks",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   actions: [
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.notifications_none_sharp,
        //           color: Color(0xff8e8d8d),
        //         )),
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.message,
        //           color: Color(0xff8e8d8d),
        //         )),
        //   ],
        //   backgroundColor: Colors.white,
        // ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 18.0),
              color: Color(0xffebf8f8),
              // color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Expanded(
                      // child:
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Recommendations for you",
                          style: TextStyle(
                              color: Color(0xff38383f),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //  ),
                      Icon(
                        Icons.clear,
                        color: Color(0xffacb0b0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: screenwidth,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return
                              //SingleChildScrollView(
                              // child:
                              Container(
                            margin: EdgeInsets.only(bottom: 10),
                            // color: Colors.black,
                            width: screenwidth! / 2,
                            height: screenwidth! / 2,
                            //height: 500,
                            // height: 800,
                            //height: 5,
                            // height: screenwidth!/3,
                            child:

                                //  Flexible(
                                // child:
                                ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height - 45),
                              child: Card(
                                // elevation: 10,
                                margin: EdgeInsets.symmetric(horizontal: 7),

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),

                                // height: screenwidth!/2,
                                // child: Container(
                                //  color: Colors.purple,

                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(5)),
                                            child: Image.asset("assets/BB.jpeg",
                                                width: 50, fit: BoxFit.cover))),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Text(
                                        "Yash",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Text(
                                        'Member at Devrabbit solution',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,

                                      children: [
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Icon(
                                          Icons.person_add_alt,
                                          color: Colors.teal,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "follow",
                                          style:
                                              (TextStyle(color: Colors.teal)),
                                        )
                                      ],
                                    ),
                                    // Text("helojsdjjkjknkjcskxz",style: TextStyle(color: Colors.black),),
                                    // Text("helojsdjjkjknkjcskxz",style: TextStyle(color: Colors.black),),
                                    // Text("helojsdjjkjknkjcskxz",style: TextStyle(color: Colors.black),),
                                    // Text("helojsdjjkjknkjcskxz",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                            ),
                            // ),
                          );
                          // );

                          // if any error comes use this
                          //  Card(
                          //   child: Center(child: Text('Dummy Card Text')),
                          // );
                        }),
                  ),
                  // ]),
                  //   ),
                  // SizedBox(
                  //   height: 50,
                  // ),

                  Container(
                    //  height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: 30,
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "All members of Memphis-Talks",
                            style: TextStyle(
                              color: Colors.black,
                              //Color(0xff1e1c24)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PreferredSize(
                          preferredSize: const Size.fromHeight(20.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: TabBar(
                                isScrollable: true,
                                unselectedLabelColor: Color(0xffc2c1c1),
                                labelColor: Colors.black,
                                indicatorColor: Color(0xff58c4c6),
                                indicatorSize: TabBarIndicatorSize.label,
                                //  controller: _tabController,
                                tabs: [
                                  Tab(text: "Players"),
                                  Tab(text: "Coach"),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // uncomment when giving actions to tab bar
                        /*   Expanded(
                          child: TabBarView(
                            children: [
                              UpcomingScreen(),
                              PendingScreen(),
                              CompletedScreen()
                            ],
                          ),
                        ),*/

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            onChanged: (value) {
                              //  filterSearchResults(value);
                            },
                            controller: myController,
                            decoration: InputDecoration(
                                // labelText: "Search",
                                hintText: "Search",
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25.0)))),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sort by name",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.sort,
                              color: Color(0xff6dcbcd),
                            ),
                          ],
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                        child: Card(
                                      // elevation: 1,

                                      // shape: RoundedRectangleBorder(
                                      //     borderRadius:
                                      //     BorderRadius.circular(10)),
                                      child: Container(
                                        // height: 100,
                                        child: Column(
                                          // crossAxisAlignment:CrossAxisAlignment.start,
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Icon(
                                                      Icons.person,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "Yashwanth",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      "Flutter developer at devrabbit",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xffebe9e9)),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.people_rounded,
                                                          color:
                                                              Color(0xffc5c0c0),
                                                        ),
                                                        SizedBox(
                                                          width: 2,
                                                        ),
                                                        Text(
                                                          "Developer Team",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc5c0c0),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  // flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Icon(
                                                        (Icons
                                                            .messenger_outline_outlined),
                                                        color:
                                                            Color(0xff6dcbcd),
                                                      )
                                                    ],
                                                  ),
                                                ),

                                                // Padding(padding: EdgeInsets.symmetric(horizontal: 50),child: Icon((Icons.messenger_outline_outlined),color: Color(0xff6dcbcd),))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
