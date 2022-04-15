import 'package:app_mobile/routes/app_pages.dart';
import 'package:app_mobile/shared/styles/body_style/body_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
part 'search_box.dart';
part 'list_hot_movie.dart';
part 'maybe_like_movie.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> allData = [
    'Phim tình cảm',
    'Phim khoa học viễn tưởng',
    'Phim kinh dị',
    'Phim hành động',
    'Phim hoạt hình'
  ];
  @override
  void initState() {
    super.initState();
    // _cubit = SearchCubit();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          height: Get.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  stops: [0.4, 1.0],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topLeft,
                  colors: [
                    AppColors.gradient1BackgroundColor,
                    AppColors.gradient2BackgroundColor
                  ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.1,
                ),
                //tìm kiếm phim
                widget._searchBox(),
                //danh sách các gợi ý
                SizedBox(
                  height: Get.height * 0.45,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: allData.length,
                    itemBuilder: (context, index) {
                      final result = allData[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: InkWell(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.access_time_rounded,
                                  color: AppColors.iconColorLight,
                                  size: 22,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  child: Text(
                                    result,
                                    style: Textbody2.defaultStyle,
                                  ),
                                  onTap: () async {},
                                ),
                              ],
                            ),
                            onTap: () {
                              Get.toNamed(Routes.DETAIL);
                            },
                          ),
                          trailing: const Icon(
                            Icons.clear,
                            size: 22,
                            color: AppColors.iconColorLight,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        thickness: 0.3,
                        color: AppColors.colorLight.withOpacity(0.3),
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 25,
                  color: AppColors.colorLight.withOpacity(0.2),
                ),
                Text(
                  'Xóa lịch sử tìm kiếm',
                  style: Textbody2.defaultStyle
                      .copyWith(color: AppColors.colorLight.withOpacity(0.5)),
                ),
                //Tìm kiếm phổ biến
                widget._lstHotMovie(),
                const SizedBox(
                  height: 24,
                ),
                widget._maybeYouLike(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
