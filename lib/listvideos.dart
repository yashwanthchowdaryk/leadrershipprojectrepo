import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'package:ext_video_player/ext_video_player.dart';//add pacakge to pubspec.yaml

// void main() {
//   runApp(
//     MaterialApp(
//       home: _App(),
//     ),
//   );
// }

List<String> videos = [
  "https://www.youtube.com/watch?v=-YDONnfg6Zo",
  "https://www.youtube.com/watch?v=uc9l3EsO4jo",
  "https://www.youtube.com/watch?v=uc9l3EsO4jo"
];

// class _App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView of VideoFeed'),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(8),
//           children: <Widget>[
//             VideoPlayerRemote(
//               url: videos[0],
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height,
//               color: Colors.red[600],
//               child: const Center(child: Text('Item A')),
//             ),
//             VideoPlayerRemote(
//               url: videos[1],
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height,
//               color: Colors.greenAccent[500],
//               child: const Center(child: Text('Item B')),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height,
//               color: Colors.purple[100],
//               child: const Center(child: Text('Item C')),
//             ),
//             VideoPlayerRemote(
//               url: videos[2],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ListView of VideoFeed'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            VideoPlayerRemote(
              url: videos[0],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.red[600],
              child: const Center(child: Text('Item A')),
            ),
            VideoPlayerRemote(
              url: videos[1],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.greenAccent[500],
              child: const Center(child: Text('Item B')),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.purple[100],
              child: const Center(child: Text('Item C')),
            ),
            VideoPlayerRemote(
              url: videos[2],
            ),
          ],
        ),
      ),
    );
  }
}


//video code

class VideoPlayerRemote extends StatefulWidget {
  final String url;
  VideoPlayerRemote({required this.url});
  @override
  _VideoPlayerRemoteState createState() => _VideoPlayerRemoteState();
}

class _VideoPlayerRemoteState extends State<VideoPlayerRemote> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.url, //to access its parent class constructor or variable
    );

    _controller!.addListener(() {
      setState(() {});
    });
    _controller!.setLooping(true); //loop through video
    _controller!.initialize().then((_) => _controller!.play());

    // ..initialize().then((_) => controller!.play());//initialize the VideoPlayer
  }

  @override
  void dispose() {
    _controller!.dispose(); //dispose the VideoPlayer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(padding: const EdgeInsets.only(top: 20.0)),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
               //   _PlayPauseOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
