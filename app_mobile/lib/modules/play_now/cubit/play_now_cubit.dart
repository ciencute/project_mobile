import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../base/base_cubit.dart';
import '../../../shared/utils/logger.dart';

part '../state/play_now_state.dart';

class PlayNowCubit extends Cubit<PlayNowState> {
  PlayNowCubit({required this.movieAppRepository}) : super(PlayNowState());

  MovieAppRepository movieAppRepository;
  Future<void> getDataLoadmore() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await movieAppRepository.getMoviesTopView(1);
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

  void fetchMoreData() async {
    if (state.page == state.lastPages) {
      return;
    }
    if (state.loadStatus == LoadStatus.loadingMore) {
      return;
    }
    emit(state.copyWith(loadStatus: LoadStatus.loadingMore));

    final result = await movieAppRepository.getMoviesTopView(
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
