import 'package:flutter/material.dart';
import 'draw.dart';

class SwitchC extends StatefulWidget {
  const SwitchC({Key? key}) : super(key: key);

  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<SwitchC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch community ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Draw()),
          );
        }, icon:Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                     // radius: 10,
                      backgroundColor: Colors.white,
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.outlet_outlined)),
                    ),
                  ),
                  Text("Memphisis Talk",style:TextStyle(color: Colors.black),),
                  SizedBox(
                    width: 150,
                  ),
                  Expanded(child: IconButton(onPressed: (){}, icon:Icon(Icons.radio_button_checked,color: Color(0xff58c4c6),)))
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Card(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      // radius: 10,
                      backgroundColor: Colors.white,
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.outlet_outlined)),
                    ),
                  ),
                  Text("Mind space",style:TextStyle(color: Colors.black),),
                  SizedBox(
                    width: 170,
                  ),
                  Expanded(child: IconButton(onPressed: (){}, icon:Icon(Icons.radio_button_off,)))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Center(
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
                    'Add new community',
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
          ],
        ),
      ),
    );
  }
}
