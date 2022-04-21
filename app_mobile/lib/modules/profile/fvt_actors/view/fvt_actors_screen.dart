import 'dart:io';

import 'package:app_mobile/modules/profile/acount_infos/state/acount_infos_state.dart';
import 'package:app_mobile/modules/profile/fvt_actors/state/fvt_actors_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/resource/assets_constant/icon_constants.dart';
import 'package:app_mobile/resource/assets_constant/images_constants.dart';
import 'package:app_mobile/shared/constants/colors.dart';
import 'package:get/get.dart';

import '../../../../shared/styles/body_style/body_text_style.dart';
import '../../../../shared/styles/label_style/label_text_style.dart';
import '../cubit/fvt_actors_cubit.dart';
part 'fvt_actors_screen.chidren.dart';

class FavoriteActorsScreen extends StatefulWidget {
  const FavoriteActorsScreen({Key? key}) : super(key: key);

  @override
  _FavoriteActorsScreenState createState() => _FavoriteActorsScreenState();
}

class _FavoriteActorsScreenState extends State<FavoriteActorsScreen> {
  // late FavoriteActorsCubit _cubit;
  late File profilePicFile;
  @override
  void initState() {
    super.initState();
    // _cubit = FavoriteActorsCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.gradient2BackgroundColor,
            elevation: 0.2,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xffffffff),
              ),
              iconSize: 25,
              onPressed: () {
                Get.back();
              },
            )),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 50,
                    child: Text(
                      'Favorite ACTORS'.toUpperCase(),
                      style: Textbody4.defaultStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),

                widget._lstFvtActors()
              ],
            ),
          ),
        ));
  }
}
