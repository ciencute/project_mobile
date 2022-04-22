import 'package:app_mobile/api/models/ui_item/ui_item.dart';
import 'package:app_mobile/shared/constants/colors.dart';
import 'package:app_mobile/shared/widgets/image_widget/fcore_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/styles/body_style/body_text_style.dart';
import '../../../shared/widgets/appbar/appbar.dart';
import '../../video/view/video_screen.dart';
part 'detail_screen.children.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late UIItem modelItems;

  @override
  void initState() {
    modelItems = Get.arguments as UIItem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'MOVIE'),
      backgroundColor: AppColors.gradient2BackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget._movieInfo(model: modelItems),
            const SizedBox(
              height: 16,
            ),
            widget._movieRelated(model: modelItems)
          ],
        ),
      ),
    );
  }
}
