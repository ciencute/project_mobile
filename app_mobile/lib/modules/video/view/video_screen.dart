import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../api/models/comments/comments_identity.dart';
import '../../../api/models/episodes/episodes_identity.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/appbar/appbar.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';

part 'video_screen.children.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key? key,
  }) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController? controller;
  ChewieController? chewieController;
  late String videoUrl;
  late String title;
  late List<CommentsModel> lstComment;
  late List<EpisodesModel> lstEpisodes;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await initData();
      await initPlayer(videoUrl);
    });
  }

  Future<void> initData() async {
    videoUrl = await Get.arguments['videoUrl'] ?? '';
    title = await Get.arguments['title'] ?? '';
    lstComment = await Get.arguments['lstComment'] ?? [];
    lstEpisodes = await Get.arguments['lstEpisodes'] ?? [];
  }

  initPlayer(String url) {
    controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        controller?.play();
        controller?.setLooping(true);
        controller?.addListener(() => setState(() {}));
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
      videoPlayerController: controller!,
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

  void disposePlayer() {
    controller?.dispose();
    chewieController?.dispose();
  }

  void resetPlayer() {
    disposePlayer();
    initPlayer(videoUrl);
  }

  @override
  void didUpdateWidget(VideoScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (videoUrl != videoUrl) {
      resetPlayer();
    }
  }

  @override
  void dispose() {
    disposePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: appbar(context, title: 'MOVIE'),
          backgroundColor: AppColors.gradient2BackgroundColor,
          body: controller?.value.isInitialized ?? false
              ? Column(
                  children: [
                    SizedBox(
                      height: DEFAULT_HEIGHT * 4 / 5,
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: AppBar(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        bottom: TabBar(
                          indicatorColor: Colors.transparent,
                          tabs: [
                            Tab(child: TextHeading4('List Comment')),
                            Tab(child: TextHeading4('List Episodes')),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        widget._lstEpisodes(
                            lstEpisodes: lstEpisodes,
                            urlNew: (url) {
                              initPlayer(
                                  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
                            }),
                        Container()
                      ],
                    ))
                  ],
                )
              : LoadingCommon().loadingWidget()),
    );
  }
}
