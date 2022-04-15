import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/modules/profile/view/profile_screen.dart';
import 'package:app_mobile/resource/assets_constant/images_constants.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../base/base_cubit.dart';
import '../state/search_state.dart';


class SearchCubit extends Cubit<SearchState> {
 SearchCubit() : super(SearchState());


  void changePage(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }

}
