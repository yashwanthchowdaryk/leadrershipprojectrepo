import 'package:flutter/material.dart';
import 'message.dart';
import 'notification.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {
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
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "My registered events",
                        style: TextStyle(color: Color(0xff1e1c24),fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.tune_rounded,
                          color: Color(0xff959494),
                        ))
                  ],
                ),
                // search bar
                Container(
                  //height:MediaQuery.of(context).size.height- ,
                  width: MediaQuery.of(context).size.width - 55,
                  child: Card(
                    margin: EdgeInsets.only(left: 2, bottom: 25, right: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      // controller: myController,

                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.tune),
                            color: Colors.grey,
                            onPressed: () {},
                          )),
                    ),
                  ),
                ),
                Container(
                  //height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 8,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return showCard();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showCard() {
    return Container(
      //width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    child: Image.asset(
                      "assets/BB.jpeg",
                      height: 200,
                      width: 150,
                      fit: BoxFit.fitHeight,
                    ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 270,

                  //  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Fundraising strategies",
                          style: TextStyle(color: Color(0xff1e1c24)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Color(0xffa4a3a3),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "By",
                        style: TextStyle(color: Color(0xff1e1c24)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          radius: 5,
                          child: Icon(
                            Icons.person,
                            size: 10,
                          ),
                        ),
                      ),
                      Text(
                        "Balyaa",
                        style: TextStyle(color: Color(0xff1e1c24)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xff9d9c9c),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "4th July 2020",
                          style: TextStyle(color: Color(0xff9d9c9c)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Color(0xff9d9c9c),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "5pm - 7pm",
                          style: TextStyle(color: Color(0xff9d9c9c)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.video_call_outlined,
                        color: Color(0xff9d9c9c),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Zoom",
                          style: TextStyle(color: Color(0xff9d9c9c)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
