part of '../cubit/dashboard_cubit.dart';

class DashboardState extends BaseState {
  final int pageIndex;

  DashboardState({
    this.pageIndex = 0,
  });

  @override
  DashboardState copyWith({
    int? pageIndex,
  }) {
    return DashboardState(
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }

  @override
  List<Object> get props => [
        pageIndex,
      ];
}
