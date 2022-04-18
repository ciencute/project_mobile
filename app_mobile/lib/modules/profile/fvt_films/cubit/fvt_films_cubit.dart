import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/fvt_films_state.dart';

class FavoriteFilmsCubit extends Cubit<FavoriteFilmsState> {
 FavoriteFilmsCubit() : super(FavoriteFilmsState());
 }