import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/base/base_cubit.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../resource/assets_constant/icon_constants.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/home/home_identity.dart';
import '../../../api/repositories/movie_app_repository.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/utils/logger.dart';
import '../view/home_screen.dart';

part '../state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.movieAppRepository}) : super(HomeState());
  MovieAppRepository movieAppRepository;

  Future<void> getData() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await movieAppRepository.getHomeUI();
      emit(state.copyWith(homeModel: result));
    } catch (error, stackTrace) {
      logger.e(error, stackTrace: stackTrace);
    }
  }
    Future<List<UIItem>> getDataLoadmore({
     required int page
    }) async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await movieAppRepository.getMovieAnimation(page);
      emit(state.copyWith(lstUiItem: result));
      return result;
    } catch (error, stackTrace) {
      logger.e(error, stackTrace: stackTrace);
    }
    return [];
  }

  List<MovieCardModel> lstImage() {
    final items = <MovieCardModel>[];
    final item = MovieCardModel(
        icon: ImageConstants.imageMovie1, star: 5, title: 'Phim hay');
    for (var i = 0; i < 10; i++) {
      items.add(item);
    }
    return items;
  }

  List<UIItem> lstMovie() {
    final items = <UIItem>[];

    for (var i = 0; i < 10; i++) {
      items.add(UIItem(
        id: i,
        title: 'Phim chem nhau',
        img: ImageConstants.imageMovie1,
        description: '',
      ));
    }
    return items;
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
            title: 'Country',
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
