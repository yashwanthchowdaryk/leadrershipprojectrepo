import 'package:flutter/material.dart';

class Recommand extends StatefulWidget {
  const Recommand({Key? key}) : super(key: key);

  @override
  _RecommandState createState() => _RecommandState();
}

class _RecommandState extends State<Recommand> {
  final myController = TextEditingController();

  double? screenwidth;

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Memphis Talks",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: Color(0xff8e8d8d),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Color(0xff8e8d8d),
                )),
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
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
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Recommendations for you",
                      style: TextStyle(
                        color: Color(0xff38383f),
                      ),
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
              // Container(
              // color: Colors.,
              //height: 300,
              //height: MediaQuery.of(context).size.height / 4,
              // width: 200,
              //  child:
              //Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // Text(
              //   'Headline',
              //   style: TextStyle(fontSize: 18),
              // ),

                // color: Colors.black,
                //  color: Color(0xffebf8f8),
                // padding: EdgeInsets.only(bottom: 10),
                // height: screenwidth! / 1.6,

               Expanded(
                 //
                  flex: 1,
                //  child: Container(
                   // color: Colors.red,
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
                              width: screenwidth! / 2.5,
                             //height: 500,
                             // height: 800,
                              //height: 5,
                             // height: screenwidth!/3,
                              child:

                                  //  Flexible(
                                  // child:
                                  Container(
                                   // color: Colors.blue,
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height-45),
                                      child: Card(
                                // elevation: 10,
                                margin: EdgeInsets.symmetric(horizontal: 7),

                                shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),

                                // height: screenwidth!/2,
                               // child: Container(
                                 //  color: Colors.purple,

                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(child: ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(5)),child: Image.asset("assets/NTR.jpg",width: 50,fit: BoxFit.cover))),

                                          SizedBox(
                                            height: 10,
                                          ),
                                           Padding(padding: EdgeInsets.symmetric(horizontal: 15),

                                            child:
                                          Text(
                                            "Yash",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 17),
                                          ),
                                             ),
                                          SizedBox(
                                            height: 10,
                                          ),

                                           Padding(padding:EdgeInsets.symmetric(horizontal: 15) ,
                                           child:
                                          Text(
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
                                                style: (TextStyle(color: Colors.teal)),
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
                                  ),
                              // ),
                            );
                         // );

                          // if any error comes use this
                          //  Card(
                          //   child: Center(child: Text('Dummy Card Text')),
                          // );
                        }),
                //  ),
                ),
              // ]),
              //   ),
              // SizedBox(
              //   height: 50,
              // ),

              Expanded(
               flex: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)))),
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
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          //  itemCount: items.length,
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
                                                  backgroundColor: Colors.white,
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
                                                        color:
                                                            Color(0xffebe9e9)),
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
                                                          color:
                                                              Color(0xffc5c0c0),
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
                                                      color: Color(0xff6dcbcd),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
