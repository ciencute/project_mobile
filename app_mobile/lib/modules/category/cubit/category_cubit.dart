import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/modules/profile/view/profile_screen.dart';
import 'package:app_mobile/resource/assets_constant/images_constants.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../base/base_cubit.dart';

part '../state/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
 CategoryCubit() : super(CategoryState());


  void changePage(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }

}
