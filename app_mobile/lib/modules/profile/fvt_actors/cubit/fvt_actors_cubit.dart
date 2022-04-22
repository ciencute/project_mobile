import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/models/enums/load_status.dart';
import '../../../../api/repositories/movie_app_repository.dart';
import '../../../../shared/utils/logger.dart';
import '../state/fvt_actors_state.dart';

class FavoriteActorsCubit extends Cubit<FavariteActorsState> {
  FavoriteActorsCubit({required this.movieAppRepository})
      : super(FavariteActorsState());

  MovieAppRepository movieAppRepository;
  Future<void> getDataLoadmore({required id}) async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await movieAppRepository.getMovieFavoriteActor(1);
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

    final result = await movieAppRepository.getMovieFavoriteActor(
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
