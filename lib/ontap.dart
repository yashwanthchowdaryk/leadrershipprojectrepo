import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: double.maxFinite,
          child: Stack(
            children: [
              Image.asset(
                "assets/BB.jpeg",
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),

              Container(
                margin: EdgeInsets.only(top: screenWidth / 1.3),
                padding: EdgeInsets.symmetric(horizontal: 18),
                //height: double.maxFinite,
                // color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(23))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Spacer(),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bala krishna",
                          style: TextStyle(color: Color(0xff2c2a32),fontWeight: FontWeight.bold),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Color(0xff6dcbcd),))
                      ],
                    ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       hintText: "FirstName",
                    //       border: UnderlineInputBorder(
                    //           borderSide:
                    //           BorderSide(color: Colors.grey))),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    Text(
                      "Actor | Poltician",
                      style: TextStyle(color: Color(0xffc3c2c2)),
                    ),

                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     hintText: "LastName",
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    Text(
                      "Memphis,TN",
                      style: TextStyle(color: Colors.grey),
                    ),

                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     hintText: "EmailID",
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    Row(
                      children: [
                        Icon(
                          Icons.people_rounded,
                          color: Color(0xffa4a3a3),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Member of industry",
                          style: TextStyle(color: Color(0xffc3c2c2)),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    // Card(
                    //   child: Container(
                    //     child: IntrinsicHeight(
                    //       child: Row(
                    //         children: [
                    //           Column(
                    //             children: [
                    //               Text(
                    //                 "Post",
                    //                 style: TextStyle(color: Color(0xffc3c2c2)),
                    //               ),
                    //               Text(
                    //                 "100",
                    //                 style: TextStyle(
                    //                     color: Colors.black, fontSize: 20),
                    //               )
                    //             ],
                    //           ),
                    //           VerticalDivider(
                    //             color: Color(0xff8b8b8b),
                    //             //  endIndent: 5,
                    //             width: 80,
                    //             indent: 1,
                    //             thickness: 0,
                    //           ),
                    //           Column(
                    //             children: [
                    //               Text(
                    //                 "Followers",
                    //                 style: TextStyle(color: Color(0xffc3c2c2)),
                    //               ),
                    //               Text(
                    //                 "100000",
                    //                 style: TextStyle(
                    //                     color: Colors.black, fontSize: 20),
                    //               )
                    //             ],
                    //           ),
                    //           VerticalDivider(
                    //             color: Color(0xff8b8b8b),
                    //             //  endIndent: 5,
                    //             width: 80,
                    //             indent: 5,
                    //             thickness: 0,
                    //           ),
                    //           Column(
                    //             children: [
                    //               Text(
                    //                 "Following",
                    //                 style: TextStyle(color: Color(0xffc3c2c2)),
                    //               ),
                    //               Text(
                    //                 "10",
                    //                 style: TextStyle(
                    //                     color: Colors.black, fontSize: 20),
                    //               )
                    //             ],
                    //           ),
                    //           // Divider(
                    //           //
                    //           // )
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       hintText: "Community Subcription code",
                    //       suffix: Text("optional")),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    // Row(
                    //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     SizedBox(
                    //       width: 180,
                    //       height: 50,
                    //       child: ElevatedButton(
                    //         onPressed: () {},
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(50.0)),
                    //           padding: const EdgeInsets.all(0.0),
                    //           // onPrimary: Colors.transparent
                    //         ),
                    //         child: Ink(
                    //           decoration: const BoxDecoration(
                    //             gradient: LinearGradient(
                    //               colors: <Color>[
                    //                 Color(0xff2c4b7b),
                    //                 Color(0xff4795a9),
                    //                 // Color(0xFF42A5F5),
                    //               ],
                    //             ),
                    //             borderRadius:
                    //                 BorderRadius.all(Radius.circular(80.0)),
                    //           ),
                    //           child: Container(
                    //             constraints: const BoxConstraints(
                    //                 minWidth: 48.0, minHeight: 36.0),
                    //             // min sizes for Material buttons
                    //             alignment: Alignment.center,
                    //             child: const Text(
                    //               'Follow',
                    //               textAlign: TextAlign.center,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 70,
                    //     ),
                    //     Icon(
                    //       Icons.touch_app_outlined,
                    //       color: Color(0xff6dcbcd),
                    //     ),
                    //     Text(
                    //       "Tap",
                    //       style: TextStyle(color: Color(0xff6dcbcd)),
                    //     )
                    //   ],
                    // ),
                    //
                    // // Row(
                    // //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // //   children: [
                    // //
                    // //     IconButton(
                    // //         onPressed: () {},
                    // //         icon: Icon(
                    // //             Icons.check_box_outline_blank)),
                    // //     Expanded(
                    // //       //flex: 1,
                    // //       child: RichText(
                    // //           text: TextSpan(
                    // //               text: "i agree with all",
                    // //               style: TextStyle(color: Colors.grey,fontSize: 13),
                    // //               children: [
                    // //                 TextSpan(
                    // //                     text:
                    // //                     " Terms of Use and Privacy Policy",
                    // //                     style: TextStyle(color: Colors.teal,fontSize: 13))
                    // //               ])),
                    // //     )
                    // //   ],
                    // // ),
                    // // ElevatedButton(onPressed: (){},
                    // //
                    // //     style: ElevatedButton.styleFrom(onPrimary: Colors.gra),
                    // //     child: child)
                    //
                    // // Container(
                    // //    decoration: BoxDecoration(
                    // //      gradient: LinearGradient(
                    // //          colors: [Colors.red, Colors.blue],
                    // //          begin: FractionalOffset(0.0, 0.0),
                    // //          end: FractionalOffset(0.5, 0.0),
                    // //          stops: [0.0, 1.0],
                    // //          tileMode: TileMode.clamp),
                    // //    ),
                    // //    child: ElevatedButton(
                    // //      //color: Colors.transparent,
                    // //      style: ElevatedButton.styleFrom(onPrimary: Colors.transparent,p),
                    // //      child: Text("Next"),
                    // //      onPressed: () {
                    // //
                    // //      },
                    // //    )),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    // Text(
                    //   "Get in Touch",
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    // // Row(
                    // //
                    // //   children: [
                    // //     // SizedBox(
                    // //     //   width: 50,
                    // //     //
                    // //     // ),
                    // //     // Expanded(
                    // //     // child:
                    // //     new Padding(padding: new EdgeInsets.symmetric(horizontal: 10.0)),
                    // //     //  new Padding(padding: new EdgeInsets.symmetric(vertical: 10.0)),
                    // //     Column(
                    // //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // //       crossAxisAlignment: CrossAxisAlignment.start,
                    // //       children: [
                    // //         SizedBox(
                    // //           width: 50,
                    // //         ),
                    // //       //  Text("Date From",style: TextStyle(color: Color(0xff030303)),),
                    // //         SizedBox(
                    // //           width: 150,
                    // //           child: ElevatedButton(
                    // //             style: ElevatedButton.styleFrom(
                    // //               primary: Colors.white,
                    // //               // maximumSize: Size(40, 40)
                    // //               //  onPrimary: Colors.white,
                    // //             ),  onPressed: (){
                    // //             //   pickDate(context);
                    // //
                    // //
                    // //             // showDatePicker(
                    // //             //     context: context,
                    // //             //     initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                    // //             //     firstDate: DateTime(2001),
                    // //             //     lastDate: DateTime(2021)
                    // //             // ).then((date) {
                    // //             //   setState(() {
                    // //             //     _dateTime = date!;
                    // //             //   });
                    // //             // });
                    // //
                    // //           }, child:  Row(
                    // //             mainAxisAlignment: MainAxisAlignment.start,
                    // //             children: [
                    // //               Padding(
                    // //                 padding: const EdgeInsets.all(2.0),
                    // //                 child: Icon(Icons.messenger_outline_outlined,color: Color(0xff6dcbcd),),
                    // //               ),
                    // //               SizedBox(width: 10,),
                    // //               Text("Send message",style: TextStyle(color: Color(0xff6dcbcd)),),
                    // //             ],
                    // //           ),
                    // //
                    // //             //  Icon(Icons.calendar_today_outlined,color: Color(0xff030303),),
                    // //
                    // //           ),
                    // //         )
                    // //       ],
                    // //     ),
                    // //     //  ),
                    // //     SizedBox(
                    // //       width: 50,
                    // //     ),
                    // //     Expanded(
                    // //       child:
                    // //       Column(
                    // //         crossAxisAlignment: CrossAxisAlignment.start,
                    // //         children: [
                    // //          // Text("Date To",style: TextStyle(color: Color(0xff030303)),),
                    // //           SizedBox(
                    // //             width: 350,
                    // //             child: ElevatedButton(
                    // //               style: ElevatedButton.styleFrom(
                    // //                 primary: Colors.white, // background
                    // //                 //  onPrimary: Colors.white, // foreground
                    // //               ),onPressed: (){
                    // //               //  pickDate1(context);
                    // //               // showDatePicker(
                    // //               //     context: context,
                    // //               //     initialDate: DateTime.now(),
                    // //               //     firstDate: DateTime(2001),
                    // //               //     lastDate:  (new DateTime.now()).add(new Duration(days: 7))
                    // //               // ).then((date) {
                    // //               //   setState(() {
                    // //               //     _dateTime = date!;
                    // //               //   });
                    // //               // });
                    // //
                    // //             }, child: Row(
                    // //               mainAxisAlignment: MainAxisAlignment.start,
                    // //               children: [
                    // //                 Padding(
                    // //                   padding: const EdgeInsets.all(2.0),
                    // //                   child: Icon(Icons.calendar_today,color: Color(0xff6dcbcd),),
                    // //                 ),
                    // //                 SizedBox(width: 10,),
                    // //                 Text("Schedule a 1:1",style: TextStyle(color:Color(0xff6dcbcd)),),
                    // //                 // Text("${date1.day}/${date1.month}/${date1.year}",style: TextStyle(color: Colors.red),),
                    // //               ],
                    // //             ),
                    // //             ),
                    // //           ),
                    // //
                    // //         ],
                    // //       ),
                    // //     ),
                    // //
                    // //   ],
                    // // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Card(
                    //       child: Container(
                    //         child: Row(
                    //           children: [
                    //             Icon(
                    //               Icons.messenger_outline_outlined,
                    //               color: Color(0xff6dcbcd),
                    //             ),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             Text(
                    //               "send message",
                    //               style: TextStyle(color: Color(0xff6dcbcd)),
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     Card(
                    //       child: Container(
                    //         child: Row(
                    //           children: [
                    //             Icon(
                    //               Icons.calendar_today_outlined,
                    //               color: Color(0xff6dcbcd),
                    //             ),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             Text(
                    //               "Schedule a 1:1",
                    //               style: TextStyle(color: Color(0xff6dcbcd)),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    //
                    // SizedBox(
                    //   height: 50,
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Self introduction",
                          style: TextStyle(color: Color(0xff2c2a32),fontWeight: FontWeight.bold),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Color(0xff6dcbcd),))
                      ],
                    ),

                    Container(
                      // color: Colors.red,
                      // width: 150,
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int) {
                            return Card(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                      "assets/RC.jpeg",
                                      width: 155,
                                      fit: BoxFit.fitWidth,
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        "Hello this this my video introduction how r u and what ru doing",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    showAbout(),
                    Divider(
                      indent: 5,
                      //  thickness: 2,
                    ),
                    showExperince(),
                    Divider(
                      indent: 5,
                      // thickness: 1,
                      // thickness: 1,
                    ),
                    showEducation()
                  ],
                ),
              ),

              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //     child: Text("hello",style: TextStyle(color: Colors.purple),),
              //   ),
              // )

              //),
              // ),

              //    Expanded(
              //child:

              // Positioned(
              //   top: 370,
              //   child: Expanded(
              //     child: Container(
              //     //  height: double.maxFinite,
              //      // width: double.maxFinite,
              //       color: Colors.red,
              //       child: Column(
              //        // crossAxisAlignment: CrossAxisAlignment.stretch,
              //         children: [
              //           Text("hello",style: TextStyle(color: Colors.amberAccent),)
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              //  )
            ],
          ),
        ),
      ),
    );
  }

  Widget showAbout() {
    return Card(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("About", style: TextStyle(color: Colors.black, fontSize: 20)),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Color(0xff6dcbcd),))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hi to all i am an actor come politician. my aim is to become cm and sereve  to people and to act in movies",
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      padding: const EdgeInsets.all(0.0),

                      primary: Colors.white





                  ),

                  child:  Container(
                    width:  300,
                    height: 50,
                    // constraints:
                    //     const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                    // color: Colors.white,
                    decoration: BoxDecoration(color: Colors.white,border: Border.all(
                      color: Color(0xff6dcbcd),

                    ),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Ask a question',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff6dcbcd)),
                    ),
                  ),

                  // Ink(
                  //   width: 270,
                  //   decoration: const BoxDecoration(
                  //     gradient: LinearGradient(
                  //       colors: Colors.white,
                  //     ),
                  //     borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  //   ),
                  //   child: Container(
                  //     constraints:
                  //     const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                  //     // min sizes for Material buttons
                  //     alignment: Alignment.center,
                  //     child: const Text(
                  //       'Ask a question',
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showExperince() {
    return Card(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        // color: Colors.teal,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Experince", style: TextStyle(color: Colors.black, fontSize: 20)),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Color(0xff6dcbcd),))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '''Project Managment Trainee.
open Destination . Internship
Nov2017-jan2018 . 3 months''',
              style: TextStyle(color: Colors.grey),
            ),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      padding: const EdgeInsets.all(0.0),

                      primary: Colors.white





                  ),

                  child:  Container(
                    width:  300,
                    height: 50,
                    // constraints:
                    //     const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                    // color: Colors.white,
                    decoration: BoxDecoration(color: Colors.white,border: Border.all(
                      color: Color(0xff6dcbcd),

                    ),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Ask a question',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff6dcbcd)),
                    ),
                  ),

                  // Ink(
                  //   width: 270,
                  //   decoration: const BoxDecoration(
                  //     gradient: LinearGradient(
                  //       colors: Colors.white,
                  //     ),
                  //     borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  //   ),
                  //   child: Container(
                  //     constraints:
                  //     const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                  //     // min sizes for Material buttons
                  //     alignment: Alignment.center,
                  //     child: const Text(
                  //       'Ask a question',
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showEducation() {
    return Card(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        // color: Colors.teal,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Education", style: TextStyle(color: Colors.black, fontSize: 20)),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Color(0xff6dcbcd),))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '''Sathyabamma University.
BTech
2016-2020''',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      padding: const EdgeInsets.all(0.0),

                      primary: Colors.white





                  ),

                  child:  Container(
                    width:  300,
                    height: 50,
                    // constraints:
                    //     const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                    // color: Colors.white,
                    decoration: BoxDecoration(color: Colors.white,border: Border.all(
                      color: Color(0xff6dcbcd),

                    ),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: const Text(
                      'Ask a question',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff6dcbcd)),
                    ),
                  ),

                  // Ink(
                  //   width: 270,
                  //   decoration: const BoxDecoration(
                  //     gradient: LinearGradient(
                  //       colors: Colors.white,
                  //     ),
                  //     borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  //   ),
                  //   child: Container(
                  //     constraints:
                  //     const BoxConstraints(minWidth: 38.0, minHeight: 36.0),
                  //     // min sizes for Material buttons
                  //     alignment: Alignment.center,
                  //     child: const Text(
                  //       'Ask a question',
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
