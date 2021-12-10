import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//import 'package:video_player/video_player.dart';
import 'stui.dart';
import 'package:ext_video_player/ext_video_player.dart';

class Sui extends StatefulWidget {
  const Sui({Key? key}) : super(key: key);

  @override
  _SuiState createState() => _SuiState();
}

class _SuiState extends State<Sui> {
  VideoPlayerController? controller;

  // https://www.youtube.com/watch?v=uc9l3EsO4jo
  List<String> a = [
    "https://www.youtube.com/watch?v=-YDONnfg6Zo",
    "https://www.youtube.com/watch?v=5cZjpnQBeZY",
    "https://www.youtube.com/watch?v=JmTqA4XY30Y",
    "https://www.youtube.com/watch?v=oADKUXtg-go",
    "https://www.youtube.com/watch?v=BN1MwXUR3PM",
    "https://www.youtube.com/watch?v=2_BkCz3OnlY",
    "https://www.youtube.com/watch?v=aQ7ptAdZgHM",
    "https://www.youtube.com/watch?v=NgBoMJy386M"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Swiper(
      // containerHeight: MediaQuery.of(context).size.height,
      itemCount:a.length,
      // scale: 20,
       scrollDirection: Axis.vertical,
      loop: false,
      itemBuilder: (context, int) {
        return Container(
            height: MediaQuery.of(context).size.height,
             color: Colors.red,
            child: int == 0
                ? VideoPlayerRemote(
                    url: a[int],
                    a: true,
                  )
                : VideoPlayerRemote(
                    url: a[int],
                    a: false,
                  ));
      },
    ));
  }
}

class VideoPlayerRemote extends StatefulWidget {
  final String url;
  final bool a;

  VideoPlayerRemote({required this.url, required this.a});

  @override
  _VideoPlayerRemoteState createState() => _VideoPlayerRemoteState();
}

class _VideoPlayerRemoteState extends State<VideoPlayerRemote> {
  VideoPlayerController? controller;
  bool c = false;

  @override
  void initState() {
    super.initState();
    // for (int i = 0; i < a.length; i++) {
    //   controller = VideoPlayerController.network(a[i])
    //     ..addListener(() => setState(() {}))
    //     ..setLooping(true)
    //     ..initialize().then((_) => controller!.play());
    //   print("number is $i");
    // }
    controller = VideoPlayerController.network(widget.url)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller!.play());

    c = widget.a;
    setState(() {});
    // print("number is $i");
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Container(
            height: MediaQuery.of(context).size.height,
            //color: Colors.yellow,
            child: c == true ? showStory() : showStory1()
            // ListView.builder(
            //     itemCount: 3,
            //     //  physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemBuilder: (context, int) {
            //       return int == 0 ? showStory() : showStory1();
            //       // int == 0 ? showStory() : showStory1()
            //     })
            ));
  }

  Widget showStory() {
    return Stack(
      children: [
        // Image.asset(
        //   "assets/Smg.jpeg",
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),

        video(),
        SafeArea(
          child: Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        )),
                    Text(
                      "Story",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (controller!.value.isPlaying) {
                              controller!.pause();
                            } else {
                              controller!.play();
                            }
                          });
                        },
                        icon: Icon(
                          controller!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: 25,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          //  color: Colors.green,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 5.4,
                              left: 10),
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
                                        style:
                                            TextStyle(color: Color(0xff52b0b2)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           Storydisplay(true, false, false)),
                              // );
                              controller!.pause();
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Storydisplay(true, false, false)),
                              );
                            },
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              controller!.pause();
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Storydisplay(false, true, false)),
                              );
                            },
                            icon: Icon(
                              Icons.message_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              controller!.pause();
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Storydisplay(false, false, true)),
                              );
                            },
                            icon: Icon(
                              Icons.video_call_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           Storydisplay(false, false, false)),
                              // );
                            },
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           Storydisplay(false, false, false)),
                              // );
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget showStory1() {
    return Stack(
      children: [
        // Image.asset(
        //   "assets/Smg.jpeg",
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),
        video(),
        SafeArea(
          child: Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 260),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (controller!.value.isPlaying) {
                              controller!.pause();
                            } else {
                              controller!.play();
                            }
                          });
                        },
                        icon: Icon(
                          controller!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: 25,
                        ),

                        //Icon(
                        //
                        //   // Icons.pause,
                        //   // color: Colors.white,
                        //   // size: 40,
                        // ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          // color: Colors.green,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 5.4,
                              left: 10),
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
                                        style:
                                            TextStyle(color: Color(0xff52b0b2)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           Storydisplay(true, false, false)),
                              // );
                              controller!.pause();
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Storydisplay(true, false, false)),
                              );
                            },
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              controller!.pause();
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Storydisplay(false, true, false)),
                              );
                            },
                            icon: Icon(
                              Icons.message_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              controller!.pause();
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Storydisplay(false, false, true)),
                              );
                            },
                            icon: Icon(
                              Icons.video_call_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           Storydisplay(false, false, false)),
                              // );
                            },
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           Storydisplay(false, false, false)),
                              // );
                            },
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget video() {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(bottom: 90),
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Center(
        child: AspectRatio(
            aspectRatio: controller!.value.aspectRatio,
            child: VideoPlayer(controller!)),
      ),
      // VideoPlayer(controller!),
    );
  }
}
