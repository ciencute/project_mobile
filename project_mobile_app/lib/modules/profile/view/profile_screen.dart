import 'dart:io';

import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:editable_image/editable_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_mobile_app/resource/assets_constant/icon_constants.dart';
import 'package:project_mobile_app/resource/assets_constant/images_constants.dart';
import 'package:project_mobile_app/shared/constants/colors.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
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
      child: Scaffold(
        body: BlocBuilder<ProfileCubit, ProfileState>(
          bloc: _cubit,
          builder: (_, state) {
            final infoUser = _cubit.fetchProjectInfo();

            return Column(
              children: [
                const SizedBox(
                  height: 64,
                ),
                widget._profilePic(),

                const SizedBox(
                  height: 32,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return widget._profileMenu(
                          item: ProfileMenu(
                              icon: IconConstants.iconCamera,
                              text: 'My account'));
                    },
                    separatorBuilder: (_, index) => const SizedBox(
                          height: 16,
                        ),
                    itemCount: 5)

                // widget._tabDetailInfo(
                //   lstFavorite: infoUser.lstFavorite ,
                //   lstWatched: infoUser.lstWatched,
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
