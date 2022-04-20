
import 'package:flutter_bloc/flutter_bloc.dart';


import '../state/search_state.dart';


class SearchCubit extends Cubit<SearchState> {
 SearchCubit() : super(SearchState());


  void changePage(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }

}
