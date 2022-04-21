import 'package:app_mobile/modules/movies_category/cubit/movies_category_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../shared/utils/logger.dart';
import '../state/moves_top10_state.dart';

class MoviesTop10Cubit extends Cubit<MoviesTop10State> {
  MoviesTop10Cubit({required this.movieAppRepository})
      : super(MoviesTop10State());

  MovieAppRepository movieAppRepository;
  Future<void> getMoviesTopView() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));

    try {
      final result = await movieAppRepository.getMoviesTopView();
      emit(state.copyWith(
        loadStatus: LoadStatus.success,
        lstUiItem: result,
      ));
    } catch (error) {
      logger.e(error);
    }
  }
}
