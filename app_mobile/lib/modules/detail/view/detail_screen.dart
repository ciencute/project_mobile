<<<<<<< HEAD
import 'package:app_mobile/api/models/ui_item/ui_item.dart';
import 'package:app_mobile/resource/assets_constant/icon_constants.dart';
import 'package:app_mobile/shared/constants/colors.dart';
import 'package:app_mobile/shared/widgets/image_widget/fcore_image.dart';
=======
>>>>>>> e63254871309f5d556f1aed2721c2bab4871eb38
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:shimmer/shimmer.dart';
=======

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../shared/constants/colors.dart';
>>>>>>> e63254871309f5d556f1aed2721c2bab4871eb38
import '../../../shared/styles/body_style/body_text_style.dart';
import '../../../shared/widgets/appbar/appbar.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';
import '../../video/view/video_screen.dart';
<<<<<<< HEAD
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
=======
import '../cubit/detail_cubit.dart';

>>>>>>> e63254871309f5d556f1aed2721c2bab4871eb38
part 'detail_screen.children.dart';

class DetailScreen extends StatefulWidget {
  final int id;
  const DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late DetailCubit _cubit;

  @override
  void initState() {
    super.initState();

    _cubit = DetailCubit(movieAppRepository: Get.find());
    _cubit.getDetailMovie(id: widget.id);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Detail'),
      backgroundColor: AppColors.gradient2BackgroundColor,
      body: SingleChildScrollView(
<<<<<<< HEAD
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget._movieInfo(model: modelItems),
            const SizedBox(
              height: 16,
            ),
            widget._movieRelated(model: modelItems),
            //REVIEWFIMLS
            GestureDetector(
              child: Container(
                width: Get.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: const Center(
                    child: Text('REVIEW', style: Textbody3.defaultStyle)),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        tileMode: TileMode.clamp,
                        stops: [0.4, 1.0],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topLeft,
                        colors: [
                          AppColors.gradient2BackgroundColor,
                          AppColors.gradient1BackgroundColor,
                        ]),
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(width: 0.2, color: AppColors.colorLight)),
              ),
              onTap: () async {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0)),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              tileMode: TileMode.clamp,
                              begin: Alignment.bottomLeft,
                              end: Alignment.topLeft,
                              colors: [
                                AppColors.colorLight,
                                AppColors.gradient2BackgroundColor,
                              ]),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 40,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xff333333).withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  // SizedBox(),
                                  Text(
                                    'REVIEW THIS MOVIE',
                                    style: Textbody4.defaultStyle,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.5,
                              color: Color(0xff888888).withOpacity(0.2),
                            ),
                            Column(
                              children: [
                                const FCoreImage(IconConstants.icReview),
                                const Text(
                                  'How do you feeling about the movie?',
                                  style: Textbody3.defaultStyle,
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.colorLight.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 32,vertical: 5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(horizontal: 3),
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return const Icon(
                                          Icons.sentiment_very_dissatisfied,
                                          color: Colors.red,
                                        );
                                      } else if (index == 1) {
                                        return const Icon(
                                          Icons.sentiment_dissatisfied,
                                          color: Colors.redAccent,
                                        );
                                      } else if (index == 2) {
                                        return const Icon(
                                          Icons.sentiment_neutral,
                                          color: Colors.amber,
                                        );
                                      } else if (index == 3) {
                                        return const Icon(
                                          Icons.sentiment_satisfied,
                                          color: Colors.lightGreen,
                                        );
                                      } else {
                                        return const Icon(
                                          Icons.sentiment_very_satisfied,
                                          color: Colors.green,
                                        );
                                      }
                                    },
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    });
              },
            )
          ],
        ),
      ),
=======
          child: BlocBuilder<DetailCubit, DetailState>(
              bloc: _cubit,
              builder: (context, state) {
                if (state.loadStatus == LoadStatus.loading) {
                  return LoadingCommon().loadingWidget();
                }
                if (state.uiItem == null) {
                  Center(
                    child: Textbody1('Không tải được dữ liệu'),
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget._movieInfo(model: state.uiItem ?? UIItem()),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._movieRelated(model: state.uiItem ?? UIItem())
                  ],
                );
              })),
>>>>>>> e63254871309f5d556f1aed2721c2bab4871eb38
    );
  }
}
