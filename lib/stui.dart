

import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class Storydisplay extends StatefulWidget {




   Storydisplay(this.x,this.y,this.z) ;
   bool x;
  bool y;
  bool z;

  @override
  _StorydisplayState createState() => _StorydisplayState();
}

class _StorydisplayState extends State<Storydisplay> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool? d;
   double? screenHeight;
   double? keyboardHeight;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int i=0;
    a=widget.x;
    b=widget.y;
    c=widget.z;


    // a = true;
    // b = false;
    // c = false;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
     keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Story",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.white12,
      ),
      body: Stack(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              a = false;
              b = false;
              c = false;
              //Storydisplay(x:true);
            });
          },
          child: Image.asset(
            "assets/Smg.jpeg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                //  color: Colors.green,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15),
                // margin:EdgeInsets.only(top:MediaQuery.of(context).size.height/5.4,left: 10),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Todaykjbkkksnnnkndndmndmdmdmlkdkjnkdndddfdmvnfdnfdnkgnfdknkjcdsadsadsadsadretererere",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              child: Icon(
                                Icons.person,
                                size: 10,
                              ),
                            ),

                            Text(
                              "  Jhon Craft",
                              style: TextStyle(color: Colors.white),
                            ),

                            // Padding(
                            //   padding: const EdgeInsets.only(bottom: 10,top: 10),
                            //   child: Text(".", style: TextStyle(color: Color(0xff8b8986),fontSize: 50),),
                            // ),

                            SizedBox(
                              width: 5,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Follow",
                                style: TextStyle(color: Color(0xff8cd6d7)),
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
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      //  showSmile();
                      setState(() {
                        a = true;
                        b = false;
                        c = false;
                      });

                      // showModalBottomSheet(
                      //   backgroundColor:
                      //   Colors.white,
                      //
                      //   context: context,
                      //   builder: (builder) =>
                      //       showSmile());
                    },
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // showMesaage();
                      setState(() {
                        b = true;

                        a = false;
                        c = false;


                      });
                    },
                    icon: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      //showVideo();
                      setState(() {
                        c = true;

                        b = false;
                        a = false;
                      });
                    },
                    icon: Icon(
                      Icons.video_call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        if( a )
          Container(
            // color: Colors.red,
          //  color: Colors.white,
            margin: EdgeInsets.only(top: 85),
            child: ShapeOfView(

              shape: BubbleShape(
                position: BubblePosition.Top,
                arrowPositionPercent: 0.94,
               // borderRadius: 20,
                arrowHeight: 10,
                arrowWidth: 10,

              ),
              // height:85,
              child: showSmile(),
            ),
          ),
        // Container(
        //   alignment: Alignment.bottomLeft,
        //   margin: EdgeInsets.only(top: 85),
        //   color: Colors.white,
        //   height: MediaQuery.of(context).size.height,
        //   child: showSmile(),
        // ),

        // message
        if (b )

          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(top: 125),
            height: MediaQuery.of(context).size.height,
            child: ShapeOfView(

              shape: BubbleShape(
                position: BubblePosition.Top,
                arrowPositionPercent: 0.94,
               // borderRadius: 20,
                arrowHeight: 10,
                arrowWidth: 10,
              ),
              // height:85,
              child: showMesaage(),
            ),
          ),

        // Container(
        //   alignment: Alignment.bottomLeft,
        //   margin: EdgeInsets.only(top: 125),
        //   color: Colors.white,
        //   height: MediaQuery.of(context).size.height,
        //   child: showMesaage(),
        // ),
        // video
        if (c)
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(top: 168),
            child: ShapeOfView(
              shape: BubbleShape(
                position: BubblePosition.Top,
                arrowPositionPercent: 0.94,
               // borderRadius: 20,
                arrowHeight: 10,
                arrowWidth: 10,
              ),
              // height:85,
              child: showVideo(),
            ),
          ),

      ]),
    );
  }

  Widget showSmile() {
    print("hello");
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Select Reaction",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          Row(

            children: [
              Container(
                width: 135,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.medical_services_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "All the best",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
              Container(
                width: 135,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.medical_services_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "All the best",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),


          Container(
            //color: Colors.teal,
            width: 135,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child:
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.medical_services_outlined,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    "All the best",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 135,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.medical_services_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "All the best",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
              Container(
                width: 135,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.medical_services_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "All the best",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 135,
            // padding: EdgeInsets.all(),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.medical_services_outlined,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    "All the best",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Response",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, int) {
                  return Card(
                    elevation: 0,
                    shadowColor: Colors.white12,
                    color: Colors.white12,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/Smg.jpeg"),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "kate penn",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "15 min",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.medical_services_outlined,
                                  color: Colors.red,
                                ),
                                Expanded(
                                    child: Text(
                                      "   All the best",
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                    ))

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget showMesaage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:35),
      child: SizedBox(
        height: screenHeight! - keyboardHeight!,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    //height:MediaQuery.of(context).size.height- ,

                    width: MediaQuery.of(context).size.width -95,
                    child: Card(
                      margin: EdgeInsets.only(left: 2, bottom: 5, right: 2),
                      color: Color(0xfffbfbfb),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                       // textAlignVertical: TextAlignVertical.top,
                       // textAlign: TextAlign.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        // controller: myController,

                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "   Add comments",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15)



                        ),
                      ),
                    ),
                  ),

                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff58c4c6),
                    child:  IconButton(icon: Icon(Icons.send),color: Colors.white,onPressed: (){
                      },
                    ),
                  ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("6 comments",style: TextStyle(color: Color(0xff48474e),fontWeight: FontWeight.bold),),
                  ),
                  showCard(),
                  showCard(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("See all",style: TextStyle(color: Color(0xff8cd6d7)),),
                        Icon(Icons.arrow_forward_ios,color: Color(0xff8cd6d7),size: 10,)
                      ],
                    ),
                  )
                ],
              ),
              // showCard(),
              // showCard(),



            ],
          ),
        ),
      ),
    );
  }

  Widget showVideo() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Do you want something like",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),


          Container(
           decoration: BoxDecoration(color: Color(0xff58c4c6),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(20)),
            height: 40,
            width: 130,

          //  margin: EdgeInsets.symmetric(horizontal: 10,vertical:1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.video_call_outlined,color: Colors.white,),
                Text(" Record",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          Divider(
            thickness: 0,
          ),
          Text("Response",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          Container(
            height: 200,
            child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,int){
              return Stack(
                children: [
                  Container(
                //  width: 200,
                    padding: EdgeInsets.all(8),
                  child:
                  ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/BB.jpeg",fit: BoxFit.contain,))),

                  Positioned(
                    left: 75,
                  //  bottom: 170,

                    child: Container(
                        padding: EdgeInsets.all(2),


                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("assets/BB.jpeg"),

                      )


                    ),
                  )
                ],
              );



            }),
          ),
          Divider(
            thickness: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("See all",style: TextStyle(color: Color(0xff8cd6d7)),),
              Icon(Icons.arrow_forward_ios,color: Color(0xff8cd6d7),size: 15,)
            ],
          )



        ],
      ),
    );
  }

  Widget showCard(){
    return Card(
      color: Color(0xffffffff),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.person,
                    size: 10,
                  ),
                ),
              ),

              Text(
                " Jhon Craft",
                style: TextStyle(color: Color(0xff48474e),fontWeight: FontWeight.bold),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(bottom: 10,top: 10),
              //   child: Text(".", style: TextStyle(color: Color(0xff8b8986),fontSize: 50),),
              // ),

              SizedBox(
                width: 5,
              ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "15 min ago",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("ajdjsajdjsjfsjifjdosijfjdsjfjsdjfjsdfjodsjfjodsjfdsjfdjsfjosdjfojdsjfojdsofjiodsjfojdsiojfodsjofjodjfojdsojfosjdfojsdjfoijdsi",style: TextStyle(color: Colors.grey),),
          ),
        ],
      ),

    );
  }
}
