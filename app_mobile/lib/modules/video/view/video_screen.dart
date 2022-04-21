import 'package:app_mobile/shared/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/widgets/appbar/appbar.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';

class VideoScreen extends StatefulWidget {
  final String videoUrl;
  final String title;

  const VideoScreen({required this.videoUrl, required this.title});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController controller;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
      controller = VideoPlayerController.network( widget.videoUrl)
      
      ..initialize().then((_) {
        controller.play();
        controller.setLooping(true);
        controller.addListener(() => setState(() {}));
        setState(() {});
      });
     

    chewieController = ChewieController(
      showOptions: true,
      materialProgressColors: ChewieProgressColors(
          backgroundColor: AppColors.iconColorLight,
          bufferedColor: AppColors.primaryColorLoading),
      cupertinoProgressColors: ChewieProgressColors(
          backgroundColor: Colors.red,
          bufferedColor: AppColors.primaryColorLoading),
      allowFullScreen: true,
      videoPlayerController: controller,
      autoInitialize: true,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
  

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, title: 'MOVIE'),
        backgroundColor: AppColors.gradient2BackgroundColor,
        body: 
        
        controller.value.isInitialized
            ? Column(
              children: [
                SizedBox(
                    height: DEFAULT_HEIGHT * 4 / 5,
                    child: Chewie(
                      controller: chewieController,
                    ),
                  ),
                     Container(
                      height: 50,
                      width: 80,
                      color: Colors.amber,
                    )
              ],
            )
            : LoadingCommon().loadingWidget());



  }
}
