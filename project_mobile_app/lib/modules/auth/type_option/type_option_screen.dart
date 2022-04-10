import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../dashboard/view/dashboard_screen.dart';

class TypeOntion extends StatefulWidget {
  const TypeOntion({Key? key}) : super(key: key);

  @override
  State<TypeOntion> createState() => _TypeOntionState();
}

class _TypeOntionState extends State<TypeOntion> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(VIDEO_APP)
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _typeOption(
                    onPress: () async {
                      await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashBoardScreen()));
                    },
                    title: 'Login'),
                const SizedBox(
                  height: 24,
                ),
                _typeOption(onPress: () {}, title: 'Singup'),
                const SizedBox(
                  height: 64,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _typeOption({required VoidCallback onPress, required String title}) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        width: DEFAULT_WIDTH,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: LinearGradient(
                tileMode: TileMode.clamp,
                stops: const [0.4, 1.0],
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
                colors: [
                  const Color(0xFF141e30).withOpacity(0.5),
                  const Color(0xFF243b55).withOpacity(0.5)
                ])),
        padding: const EdgeInsets.symmetric(
            horizontal: CommonConstants.kDefaultPadding,
            vertical: CommonConstants.kDefaultPadding),
        child: Center(
          child: Textlabel1(title),
        ),
      ),
    );
  }
}
