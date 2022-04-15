import 'package:app_mobile/routes/app_pages.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/styles/style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../cubit/home_cubit.dart';

part 'home_screen.children.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = HomeCubit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            widget._headerPage(
                avatar: ImageConstants.imageAvatar,
                name: 'Kien',
                description: 'Check for latest addition.'),
           
            widget._research(),
            const SizedBox(
              height: 16,
            ),
            widget._typeAction(typeActions: _cubit.lstTypeAction()),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CommonConstants.kDefaultPadding,
              ),
              child: TextHeading3('Movie Hot'),
            ),
            const SizedBox(
              height: 16,
            ),
            widget._lstMovie(lstMovies: _cubit.lstMovie()),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      
    );
  }
}
