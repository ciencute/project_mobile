import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../base/base_cubit.dart';

part '../state/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState());

  void changePage(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }
}
