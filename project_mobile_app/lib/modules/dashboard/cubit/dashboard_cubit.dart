import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_mobile_app/base/base_cubit.dart';
import '../../../api/models/enums/load_status.dart';
part '../state/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState());

  void changePage(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }
}
