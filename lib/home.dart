import 'package:flutter/material.dart';
import 'package:runway_fashion/widgets/custom_appbar.dart';
import 'package:video_player/video_player.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller=VideoPlayerController.asset(
        'assets/video/267241_small.mp4',
    )..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      setState(() {
        _controller.play();
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          title: 'Runway',
          suffix: 'assets/svgs/solar_bell-line-duotone.png',
          Prefix: 'assets/svgs/menu.svg'),

    body: Column(
      children: [
               AspectRatio(
                   aspectRatio: _controller.value.aspectRatio,
                   child: VideoPlayer(_controller)),
      ],
    ),
    );
  }
}
