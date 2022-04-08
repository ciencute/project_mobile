import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_mobile_app/modules/profile/view/profile_screen.dart';
import 'package:project_mobile_app/resource/assets_constant/images_constants.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../base/base_cubit.dart';

part '../state/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
 ProfileCubit() : super(ProfileState());
  InfoUser fetchProjectInfo()  {
    final infoUser = InfoUser(
        avatar: ImageConstants.imageMovie1,
        commnet: 200,
        description: 'kien',
        favorite: 100,
        followAuthor: 100,
        lstAuthor: lstData(),
        lstFavorite: lstData(),
        lstWatched: lstData(),
        profilePicFile: File('')
        );
        return infoUser;
    // emit(state.copyWith(
    //   infoUser: infoUser,
    //   loadStatus: LoadStatus.success,
    // ));
  }


  List<UIItem> lstData() {
    final datas = <UIItem>[];
    for (int i = 0; i < 20; i++) {
      final data = UIItem(
        description: 'Phim hay',
        icon: ImageConstants.imageMovie1,
        id: i.toString(),
        title: 'Phim Nguowif nheenj',
      );
      datas.add(data);
    }
    return datas;
  }
}
