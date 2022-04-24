import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../base/base_cubit.dart';
import '../../../shared/utils/logger.dart';

part '../state/detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit({required this.movieAppRepository}) : super(DetailState());

  MovieAppRepository movieAppRepository;
  Future<void> getDetailMovie({required int id}) async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await movieAppRepository.getMovieDetail(id);
      emit(state.copyWith(
          loadStatus: LoadStatus.success,
          uiItem: result,
          isCheckResult: result.isLiked));
    } catch (error) {
      logger.e(error);
    }
  }

  Future<void> actionFavoriteMovie({required int movieId}) async {
    emit(state.copyWith(actionLike: LoadStatus.loading));
    final isStatusLike = state.isCheckResult;
    try {
      if (isStatusLike == false) {
        final result = await movieAppRepository.addMovieFavorite(movieId);
        if (result.success == true) {
          emit(state.copyWith(
            actionLike: LoadStatus.success,
            isCheckResult: true,
          ));
        } else {
          print('Có lỗi trong quá trình xử lý');
        }
      }
      if (isStatusLike == true) {
        final result = await movieAppRepository.deleteMovieFavorite(movieId);
        if (result.success == true) {
          emit(state.copyWith(
              actionLike: LoadStatus.success, isCheckResult: false));
        } else {
          print('Có lỗi trong quá trình xử lý');
        }
      }
    } catch (error) {
      logger.e(error);
    }
  }
}
