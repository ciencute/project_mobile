
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile_app/modules/home/cubit/home_cubit.dart';
import 'package:project_mobile_app/shared/widgets/appbar/appbar.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';

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
    return Scaffold(
      appBar: appbar(context,'kien'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            widget._genListMovieCard(
              movieCardModels: _cubit.lstImage(),
            )
          ],
        ),
      ),
    );
  }
}
