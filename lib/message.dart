import 'package:flutter/material.dart';
import 'Secondpage.dart';
class Mes extends StatefulWidget {
  const Mes({Key? key}) : super(key: key);

  @override
  _MesState createState() => _MesState();
}

class _MesState extends State<Mes> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Memphis Talks",style: TextStyle(color:Colors.black),),
          leading: IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bottom()),
            );
          }, icon:Icon(Icons.arrow_back,color: Colors.black,)),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.brown,
            //height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: PreferredSize(
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
                            Tab(text: "Chats"),
                            Tab(text: "Groups"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    //height:MediaQuery.of(context).size.height- ,
                    width: MediaQuery.of(context).size.width-55 ,
                    child: Card(
                      margin: EdgeInsets.only(left: 2,bottom: 25,right:2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextFormField(
                        textAlignVertical:  TextAlignVertical.center ,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        // controller: myController,

                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            prefixIcon: IconButton(icon: Icon(Icons.search),color: Colors.grey,onPressed: (){},),
                            suffixIcon: IconButton(icon: Icon(Icons.tune),color: Colors.grey,onPressed: (){},)

                        ),
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
                      itemBuilder: (context,index){
                        return showListcard();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget showListcard(){
    return ListTile(
      subtitle: Text("you have up coming meeting",style: TextStyle(color: Colors.grey),),
      title:Text("Rc",style: TextStyle(color: Colors.black),),
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/RC.jpeg"),
      ),
      trailing: Column(
        children: [
          Text("22",style: TextStyle(color: Colors.grey),),
          SizedBox(
            height: 5,
          ),

          CircleAvatar(radius: 10,backgroundColor: Color(0xff212b68),child: Text("1",style: TextStyle(color: Colors.white),),)
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //    // height: 50,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.purple,
          //
          //     ),
          //     child: Text("1",style: TextStyle(color: Colors.white),),
          //   ),
          // )
        ],
      ),
    );
  }
}
