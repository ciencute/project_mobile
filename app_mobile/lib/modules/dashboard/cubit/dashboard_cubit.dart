import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/base/base_cubit.dart';
part '../state/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState());

  void changePage(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }
}
