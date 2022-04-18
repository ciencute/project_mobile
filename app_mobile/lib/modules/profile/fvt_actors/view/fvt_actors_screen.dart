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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('#Actors'),
                      Container(
                        width: Get.width,
                        height: 170,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Image.asset(
                                        'lib/resource/assets_resources/images/image_app/image_moive1.png',
                                        width: 110,
                                        height: 165),
                                  ),
                                  Positioned.fill(
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 110),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Textbody1('Episode-#'),
                                                Expanded(
                                                  child: Textbody2(
                                                    'Action, Crime',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffA0A0A0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              )
                            ],
                          ),
                          itemCount: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                // widget._lstFvtActors()
              ],
            ),
          ),
        ));
  }
}
