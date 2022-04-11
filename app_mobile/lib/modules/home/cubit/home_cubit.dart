import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/base/base_cubit.dart';
import 'package:app_mobile/resource/assets_constant/icon_constants.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../view/home_screen.dart';

part '../state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

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
              id: i.toString(),
              title: 'Phim chem nhau',
              icon: ImageConstants.imageMovie1,
              description: '',
              bihavior: Bihavior(action: '', data: '')));
    }
    return items;
  }

  List<UIItem> lstTypeAction() {
    final items = <UIItem>[];
    for (var i = 1; i <= 4; i++) {
      switch (i) {
        case 1:
          items.add(UIItem(
              id: i.toString(),
              title: 'Genre',
              icon: IconConstants.icGenre,
              description: '',
              bihavior: Bihavior(action: '', data: '')));
          break;
        case 2:
          items.add(UIItem(
              id: i.toString(),
              title: 'Top IMDB',
              icon: IconConstants.icTopImdb,
              description: '',
              bihavior: Bihavior(action: '', data: '')));
          break;
        case 3:
          items.add(UIItem(
              id: i.toString(),
              title: 'Country',
              icon: IconConstants.icCountry,
              description: '',
              bihavior: Bihavior(action: '', data: '')));
          break;
        case 4:
          items.add(UIItem(
              id: i.toString(),
              title: 'Watched',
              icon: IconConstants.icWatched,
              description: '',
              bihavior: Bihavior(action: '', data: '')));
          break;
        default:
      }
    }

    return items;
  }
}
