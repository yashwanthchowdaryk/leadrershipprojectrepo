import 'package:flutter/material.dart';

import 'message.dart';
import 'notification.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  double? screenWidth;
  double? screenHeight;
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
      body: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: Container(
              width: MediaQuery.of(context).size.width,
              //height:MediaQuery.of(context).size.height ,
              color: Colors.white,
              child: showUI())),
    );
  }

  Widget showUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(8.0),
        //  color: Colors.red,
          child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
            return index == 0 ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: showCardh(),
            ) : showCardh1();

          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Stories",
                style: TextStyle(color: Color(0xff56555c),fontWeight: FontWeight.bold),
              ),
              Spacer(),
              // SizedBox(width: 230,),
              Icon(
                Icons.touch_app_outlined,
                color: Color(0xff58c4c6),
              ),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      backgroundColor:
                      Colors.transparent,
                      context: context,
                      builder: (builder) =>
                          showBottomsheet());

                },
                child: Text(
                  "Tap",
                  style: TextStyle(color: Color(0xff58c4c6)),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width / 1.6,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 18),
                        child: CircleAvatar(
                          radius: 70,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Text(
                          "Add story",
                          style: TextStyle(color: Color(0xff49474d)),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
        Divider(
          indent: 1,
        ),
        Container(
          child: showLV(),
        ),
      ],
    );
  }

  Widget showLV() {
    return ListView.builder(
        itemCount: 3,
        // primary: false,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            // margin: EdgeInsets.only(bottom: 90),
            height: 400,
            child: index == 1
                ? showTop()
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
                              Icon(
                                Icons.more_vert,
                                color: Color(0xff868585),
                              )
                            ],
                          ),
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
                              style: TextStyle(color: Color(0xff1e1c24),fontWeight: FontWeight.bold),
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
                                              fontSize: 13,fontWeight: FontWeight.bold))
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
  Widget showCardh(){
    return Card(
      color: Color(0xfff1f1f1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text("All posts",style: TextStyle(color: Color(0xff46444a)),),
            Icon(Icons.arrow_drop_down,color:Color(0xff46444a) ,)
          ],
        ),
      ),
    );
  }
  Widget showCardh1(){
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(alignment: Alignment.center,child: Text("Leadership",style: TextStyle(color: Color(0xff46444a)),)),
      )
    );
  }
  Widget showBottomsheet(){
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10))
      ),

     // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("jvhgcvhdvchjdjkBVKJBFSNkvjlndfjbnklnbkldgnbknklbrhbfdgrgvjrgfkdvbkorjgiorfv",style: TextStyle(color: Colors.black,fontSize: 20),),

          TextFormField(
            decoration: InputDecoration(
              hintText: " Their email address"
            )
          ),

          TextFormField(
              decoration: InputDecoration(
                  hintText: "Your message to them"
              )
          ),

          ElevatedButton(
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
                  'Tap some one',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),


        ],

      ),
    );
  }

  Widget showDrawer(){
    return Drawer(
      child: Container(
        color: Color(0xffebf8f8),
        child: Column(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage("assets/BB.jpeg"),
            ),
            Text("BalaKrishna",style: TextStyle(
              color: Color(0xff51535a),
              fontWeight: FontWeight.bold
            ),),
            Text("Hero,Tollywood",style: TextStyle(
                color: Color(0xff848a8e),
               // fontWeight: FontWeight.bold
            ),),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.access_time,color: Color(0xff6dcbcd),)),
                      Text("Recent activity",style: TextStyle(color: Color(0xff6dcbcd)),),

                    ],
                  ),
                  // divider
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.people,color: Color(0xff6dcbcd),)),
                      Text("Switch community",style: TextStyle(color: Color(0xff6dcbcd)),),

                    ],
                  ),
                  // Divider
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings_applications_rounded,color: Color(0xff6dcbcd),)),
                      Text("Seetings",style: TextStyle(color: Color(0xff6dcbcd)),),
                    ],
                  ),
                  // divider
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.contact_support_outlined,color: Color(0xff6dcbcd),)),
                      Text("FAQ",style: TextStyle(color: Color(0xff6dcbcd)),),
                    ],
                  ),
                ],
              ),
            )



          ],
        ),
      ),

    );
  }
}
