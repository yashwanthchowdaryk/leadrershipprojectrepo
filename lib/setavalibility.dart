import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Set extends StatefulWidget {
  const Set({Key? key}) : super(key: key);

  @override
  _SetState createState() => _SetState();
}

class _SetState extends State<Set> {
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            //  padding: EdgeInsets.all(18),
            // color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Set your availability",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "njkcvdihviufdhovjrk;v,,vmmckdckdkl.,.njvcfx",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Card(
                  color: Colors.white12,
                  elevation: 0,
                 // shadowColor: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Time Zone",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "India standard time",
                              style: TextStyle(color: Color(0xff58c4c6)),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff58c4c6),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight! / 19),
                  child: showTabs(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showTabs() {
    return Container(
      // color: Colors.brown,
      //height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          PreferredSize(
            preferredSize: const Size.fromHeight(20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Color(0xffc2c1c1),
                  labelColor: Colors.black,
                  indicatorColor: Color(0xff58c4c6),
                  indicatorSize: TabBarIndicatorSize.label,
                  //  controller: _tabController,
                  tabs: [
                    Tab(text: "Weekly hours"),
                    Tab(text: "Days overrides"),
                  ],
                ),
              ),
            ),
          ),
          Container(
            //height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return showListcard();
                }),
          )
        ],
      ),
    );
  }

  Widget showListcard() {
    return Container(
      // margin: EdgeInsets.all(18),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadowColor: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.check_box_outlined,
                    color: Color(0xff58c4c6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Monday",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Expanded(
                    child: Container(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Color(0xff58c4c6),
                          ),
                        ))),
              ],
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.purple,
                  margin: EdgeInsets.symmetric(horizontal: screenWidth! / 6.9),

                  child: Row(
                    children: [
                      Container(
                        width: screenWidth! / 5,
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "9:00am",
                            style: TextStyle(color: Color(0xffa4a3a3)),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: screenWidth! / 5,
                        height: 40,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "11:00am",
                            style: TextStyle(color: Color(0xffa4a3a3)),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //
                //   child: Card(
                //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                //     child: Text("9:00am"),
                //   ),
                // ),
                // Text("-",style: TextStyle(color: Colors.grey),),
                // Container(
                //   child: Card(
                //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                //     child: Text("11:00am"),
                //   ),
                // ),

                Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.delete,
                            color: Colors.grey,
                          ),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
