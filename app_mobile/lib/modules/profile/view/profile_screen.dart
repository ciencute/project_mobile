import 'dart:io';

import 'package:app_mobile/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/resource/assets_constant/icon_constants.dart';
import 'package:app_mobile/resource/assets_constant/images_constants.dart';
import 'package:app_mobile/shared/constants/colors.dart';
import 'package:get/get.dart';

import '../../../shared/constants/common.dart';

import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../cubit/profile_cubit.dart';

part 'profile_screen.children.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ProfileCubit _cubit;
  late File profilePicFile;
  @override
  void initState() {
    super.initState();
    _cubit = ProfileCubit();
    profilePicFile = File('');
    _cubit.fetchProjectInfo();
  }

  Future<void> _directUpdateImage(File? file) async {
    if (file != null) {
      profilePicFile = file;
      setState(() {});
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<ProfileCubit, ProfileState>(
        bloc: _cubit,
        builder: (_, state) {
          return Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              widget._profilePic(),

              const SizedBox(
                height: 32,
              ),
              //thông tin cá nhân
              InkWell(
                child: widget._profileMenu(
                    item: ProfileMenu(
                        icon: IconConstants.iconProfile, text: 'My account')),
                        onTap: (){
                          Get.toNamed(Routes.ACOUNTINFO);
                        },
              ),
              const SizedBox(
                height: 16,
              ),
              //danh sách phim yêu thích
              InkWell(
                child: widget._profileMenu(
                    item: ProfileMenu(
                        icon: IconConstants.iconPlay, text: 'Favorite Films')),
                        onTap: (){
                          Get.toNamed(Routes.FVTFILMS);
                        },
              ),
              const SizedBox(
                height: 16,
              ),

              //danh sách diễn viên yêu thích
              InkWell(
                child: widget._profileMenu(
                    item: ProfileMenu(
                        icon: IconConstants.iconCamera, text: 'Favorite Actors')),
                        onTap: (){
                          Get.toNamed(Routes.FVTACTORS);
                        },
              ),
              
              const SizedBox(
                height: 48,
              ),

              //Đăng xuất

              Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(
                    horizontal: CommonConstants.kDefaultPadding),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.colorLight.withOpacity(0.8)),
                  padding: const EdgeInsets.all(16),
                  child: Center(child: Textlabel2('Log out',style: const TextStyle(color: AppColors.coloRed,
                  fontWeight: FontWeight.bold),)),
                ),
              ),
              // widget._tabDetailInfo(
              //   lstFavorite: infoUser.lstFavorite ,
              //   lstWatched: infoUser.lstWatched,
              // ),
            ],
          );
        },
      ),
    );
  }
}
