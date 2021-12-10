import 'package:flutter/material.dart';
import 'draw.dart';

class Recentactivity extends StatefulWidget {
  const Recentactivity({Key? key}) : super(key: key);

  @override
  _RecentactivityState createState() => _RecentactivityState();
}

class _RecentactivityState extends State<Recentactivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent activity",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Draw()),
          );
        }, icon:Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: showLV(),
      ),

    );
  }

  Widget showLV() {
    return ListView.builder(
        itemCount: 3,
        // primary: false,
        shrinkWrap: true,
        //physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            // margin: EdgeInsets.only(bottom: 90),
            height: 400,
            child: index == 2
                ? showPerson()
                : Card(
              shadowColor: Colors.white,
              elevation: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "US immigrants struggle story",
                          style: TextStyle(color: Color(0xff1e1c24),fontWeight: FontWeight.bold),
                        ),
                        // Icon(
                        //   Icons.more_vert,
                        //   color: Color(0xff868585),
                        // )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("hello nbcjbsDBVbjsbvJNKLnvlkvj fkvbjksdckjnaskjcabjhbdfbjksBCJbsJDBsbjcbjsaBJCBjsdjcjklnkdnjk",style: TextStyle(color: Colors.grey),),
                  ),

                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/RC.jpeg",
                        //  height: 200,
                        width: 360,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/RC.jpeg"),
                          // child: Image.asset("assets/RC.jpeg"),
                        ),
                      ),
                      Text(
                        "Ram Charan",
                        style: TextStyle(color: Color(0xff1e1c24)),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Expanded(
                        child: Text(
                          "10 mins ago",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  // uncomment when u have to use
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundImage:
                              AssetImage("assets/RC.jpeg"),
                            ),
                            Positioned(
                              // left: 70,
                                child: Container(
                                  //  color: Colors.purple,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundImage:
                                    AssetImage("assets/RC.jpeg"),
                                  ),
                                )),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            Positioned(
                              // left: 70,
                                child: Container(
                                  //  color: Colors.red,
                                  margin: EdgeInsets.only(left: 8),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundImage:
                                    AssetImage("assets/RC.jpeg"),
                                  ),
                                )),
                            Positioned(
                              // left: 70,
                                child: Container(
                                  //  color: Colors.red,
                                  margin: EdgeInsets.only(left: 15),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundImage:
                                    AssetImage("assets/RC.jpeg"),
                                  ),
                                )),

                            // Row(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: CircleAvatar(
                            //         radius: 5,
                            //         backgroundImage: AssetImage("assets/RC.jpeg"),
                            //       ),
                            //     ),
                            //     CircleAvatar(
                            //       radius: 5,
                            //       backgroundImage: AssetImage("assets/RC.jpeg"),
                            //     ),
                            //     CircleAvatar(
                            //       radius: 5,
                            //       backgroundImage: AssetImage("assets/RC.jpeg"),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 3),
                          child: RichText(
                              text: TextSpan(
                                  text: "Like by",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                  children: [
                                    TextSpan(
                                        text: " You and 50 others",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13))
                                  ])),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Expanded(
                            child: Text(
                              "6 comments",
                              style: TextStyle(color: Colors.grey),
                            ))
                      ],
                    ),
                  ),

                  // Container(
                  //   height: 100,
                  //   margin: EdgeInsets.only(left: 0,
                  //   right: 340),
                  //   child: ListView.builder(
                  //     itemCount: 3,
                  //       scrollDirection: Axis.horizontal,
                  //       shrinkWrap: true,
                  //       itemBuilder:(context,index){
                  //     return Container(
                  //       color: Colors.black,
                  //       child: Row(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           CircleAvatar(
                  //             radius: 5,
                  //             backgroundImage: AssetImage("assets/RC.jpeg"),
                  //           ),
                  //         ],
                  //       ),
                  //
                  //     );
                  //   }),
                  // ),

                  Divider(
                    indent: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Color(0xff58c4c6),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Like",
                            style: TextStyle(color: Color(0xff58c4c6)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.messenger_outline_outlined,
                            color: Color(0xff868585),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Comment",
                            style: TextStyle(color: Color(0xff868585)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.subdirectory_arrow_right_sharp,
                            color: Color(0xff868585),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: Color(0xff868585)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget showTop() {
    return Container(
      // height: 50,
      color: Color(0xfff1f1f1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Text(
              "Top Predications are here to help you",
              style: TextStyle(color: Colors.black,fontSize: 20),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Stack(
                  children: [
                    // CircleAvatar(
                    //   radius: 45,
                    //   //backgroundImage: AssetImage("assets/RC.jpeg"),
                    //   backgroundColor: Colors.white,
                    //   child: Image.asset("assets/RC.jpeg"),
                    // ),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.purple,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("assets/RC.jpeg"),
                            foregroundColor: Colors.white,

                          ),
                        )),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.red,
                          margin: EdgeInsets.only(left: 70),
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("assets/RC.jpeg"),
                            backgroundColor: Colors.white,
                          ),
                        )),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.red,
                          margin: EdgeInsets.only(left: 130),
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("assets/RC.jpeg"),
                          ),
                        )),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.red,
                          margin: EdgeInsets.only(left: 190),
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("assets/RC.jpeg"),
                          ),
                        )),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.red,
                          margin: EdgeInsets.only(left: 250),
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("assets/RC.jpeg"),
                          ),
                        )),

                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Get any answers to ur questions",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                padding: const EdgeInsets.all(0.0),
              ),
              child: Ink(
                width: 270,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xff2e507f),
                      Color(0xff4a9dae),
                      // Color(0xFF42A5F5),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  constraints:
                  const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                  // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Ask a question',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget showPerson(){
    return Card(
      shadowColor: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "US immigrants struggle story",
                  style: TextStyle(color: Color(0xff1e1c24),fontWeight: FontWeight.bold),
                ),
                // Icon(
                //   Icons.more_vert,
                //   color: Color(0xff868585),
                // )
              ],
            ),
          ),



          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 300,
                 // alignment: Alignment.center,
                 // color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffebf8f8)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:80),
                        child:

                        Stack(
    children: [
      Container(
        //  color: Colors.red,
        //margin: EdgeInsets.only(left: 250),
        //padding: EdgeInsets.only(left: 5),
        //alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
        child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage("assets/RC.jpeg"),
        ),
      ),

      Container(
        //  color: Colors.red,
         margin: EdgeInsets.only(left: 60),
       //  padding: EdgeInsets.only(left:30),
        decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
        child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage("assets/RC.jpeg"),
        ),
      ),

    ],
    ),



                      ),

                    ],

                  ),
                ),
              ),
            ),
          ),

          // Expanded(
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: Image.asset(
          //       "assets/RC.jpeg",
          //       //  height: 200,
          //       width: 360,
          //       fit: BoxFit.fitWidth,
          //     ),
          //   ),
          // ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/RC.jpeg"),
                  // child: Image.asset("assets/RC.jpeg"),
                ),
              ),
              Text(
                "Ram Charan",
                style: TextStyle(color: Color(0xff1e1c24)),
              ),
              SizedBox(
                width: 150,
              ),
              Expanded(
                child: Text(
                  "10 mins ago",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),

          // uncomment when u have to use
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundImage:
                      AssetImage("assets/RC.jpeg"),
                    ),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.purple,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundImage:
                            AssetImage("assets/RC.jpeg"),
                          ),
                        )),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.red,
                          margin: EdgeInsets.only(left: 8),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundImage:
                            AssetImage("assets/RC.jpeg"),
                          ),
                        )),
                    Positioned(
                      // left: 70,
                        child: Container(
                          //  color: Colors.red,
                          margin: EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundImage:
                            AssetImage("assets/RC.jpeg"),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 3),
                  child: RichText(
                      text: TextSpan(
                          text: "Like by",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 13),
                          children: [
                            TextSpan(
                                text: " You and 50 others",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13))
                          ])),
                ),
                SizedBox(
                  width: 80,
                ),
                Expanded(
                    child: Text(
                      "6 comments",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          ),

          Divider(
            indent: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Color(0xff58c4c6),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(color: Color(0xff58c4c6)),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.messenger_outline_outlined,
                    color: Color(0xff868585),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Comment",
                    style: TextStyle(color: Color(0xff868585)),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.subdirectory_arrow_right_sharp,
                    color: Color(0xff868585),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(color: Color(0xff868585)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
