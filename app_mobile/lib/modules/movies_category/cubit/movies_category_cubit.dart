import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../base/base_cubit.dart';
import '../../../shared/utils/logger.dart';

part '../state/movies_category_state.dart';

class MoviesCategoryCubit extends Cubit<MoviesCategoryState> {
  MoviesCategoryCubit({required this.movieAppRepository})
      : super(MoviesCategoryState());

  MovieAppRepository movieAppRepository;
  Future<void> getDataLoadmore({required id}) async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));

    try {
      final result = await movieAppRepository.getMovieCategoryByID(id, 1);
      emit(state.copyWith(
        loadStatus: LoadStatus.success,
        lstUiItem: result.data,
        page: result.currentPage,
        lastPages: result.lastPage,
      ));
    } catch (error) {
      logger.e(error);
    }
  }

  void fetchMoreData({required int id}) async {
    if (state.page == state.lastPages) {
      return;
    }
    if (state.loadStatus == LoadStatus.loadingMore) {
      return;
    }
    emit(state.copyWith(loadStatus: LoadStatus.loadingMore));

    final result = await movieAppRepository.getMovieCategoryByID(
      id,
      state.page += 1,
    );
    emit(state.copyWith(
      loadStatus: LoadStatus.success,
      lstUiItem: state.lstUiItem + (result.data ?? []),
      page: result.currentPage,
      lastPages: result.lastPage,
    ));
  }
}
