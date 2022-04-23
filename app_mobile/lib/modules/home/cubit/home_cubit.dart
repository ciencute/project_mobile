import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/base/base_cubit.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../resource/assets_constant/icon_constants.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/home/home_identity.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../shared/utils/logger.dart';

part '../state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.movieAppRepository}) : super(HomeState());
  MovieAppRepository movieAppRepository;

  Future<void> getData() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await movieAppRepository.getHomeUI();
      emit(state.copyWith(
        homeModel: result,
        loadStatus: LoadStatus.success,
      ));
    } catch (error, stackTrace) {
      logger.e(error, stackTrace: stackTrace);
    }
  }

  List<UIItem> lstTypeAction() {
    final items = <UIItem>[];
    for (var i = 1; i <= 4; i++) {
      switch (i) {
        case 1:
          items.add(UIItem(
            id: i,
            title: 'Genre',
            img: IconConstants.icGenre,
            description: '',
          ));
          break;
        case 2:
          items.add(UIItem(
            id: i,
            title: 'Top IMDB',
            img: IconConstants.icTopImdb,
            description: '',
          ));
          break;
        case 3:
          items.add(UIItem(
            id: i,
            title: 'Top 10',
            img: IconConstants.icCountry,
            description: '',
          ));
          break;
        case 4:
          items.add(UIItem(
            id: i,
            title: 'Watched',
            img: IconConstants.icWatched,
            description: '',
          ));
          break;
        default:
      }
    }

    return items;
  }
}
