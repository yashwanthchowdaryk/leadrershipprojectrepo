import 'package:flutter/material.dart';
import 'Secondpage.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FAQ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bottom()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          //color: Colors.blue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Container(
                  //  color: Colors.teal,
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
                        hintText: "Search for topics or questions",
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                        // suffixIcon: IconButton(icon: Icon(Icons.tune),color: Colors.grey,onPressed: (){},)
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                //height: MediaQuery.of(context).size.height,
                // color: Colors.purple,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, int) {
                      return ExpansionTile(
                        textColor: Colors.black,
                        iconColor: Colors.black,

                        // collapsedTextColor:Colors.red,
                        title: Text("What is upsquad",style: TextStyle(fontWeight: FontWeight.bold),),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "jsadjjfioejiofjioewjfdsjchvyhfewufhceiwhdfwedjijsdcnxweddtrdgfcgfcgvfgtfvtftgfgfgfgfgfgfghfhfhfttftftftyu",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
