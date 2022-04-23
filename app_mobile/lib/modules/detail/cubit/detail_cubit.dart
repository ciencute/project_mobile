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
      ));
    } catch (error) {
      logger.e(error);
    }
  }
}
