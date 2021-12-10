import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
import 'package:ext_video_player/ext_video_player.dart';
import 'package:youtube_explode_dart/src/videos/streams/video_quality.dart';
//import 'dart:html';
class VideoDemo extends StatefulWidget {
  VideoDemo() : super();

  final String title = "Video Demo";

  @override
  VideoDemoState createState() => VideoDemoState();
}

class VideoDemoState extends State<VideoDemo> {
  VideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
   // https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4
    controller = VideoPlayerController.network("https://www.youtube.com/watch?v=Q1NKMPhP8PY")
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller!.play());
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Container(
    alignment: Alignment.center,
    //height: MediaQuery.of(context).size.height,
    child:Stack(
      children: [
        VideoPlayer(controller!),
        VideoProgressIndicator(controller, allowScrubbing: true),
      //  PlayPauseOverlay(controller: controller),

      ],
    ),
   // VideoPlayer(controller!),
  );

  // Widget buildTextField() => Container(
  //   padding: EdgeInsets.all(32),
  //   child: Row(
  //     children: [
  //       Expanded(
  //         child: TextFieldWidget(
  //           controller: textController,
  //           hintText: 'Enter Video Url',
  //         ),
  //       ),
  //       const SizedBox(width: 12),
  //       FloatingActionButtonWidget(
  //         onPressed: () {
  //           if (textController.text.trim().isEmpty) return;
  //         },
  //       ),
  //     ],
  //   ),
  // );
}