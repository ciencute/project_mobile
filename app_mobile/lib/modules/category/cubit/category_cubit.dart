import 'package:app_mobile/api/models/home/home_identity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../base/base_cubit.dart';
import '../../../shared/utils/logger.dart';

part '../state/category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.movieAppRepository}) : super(CategoryState());
  MovieAppRepository movieAppRepository;
  Future<void> getCategories() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));

    try {
      final result = await movieAppRepository.getAllCategory();
      emit(state.copyWith(
        loadStatus: LoadStatus.success,
        lstUiItem: result,
      ));
    } catch (error) {
      logger.e(error);
    }
  }
}
