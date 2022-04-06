part of '../cubit/home_cubit.dart';

class HomeState extends BaseState {
  final LoadStatus loadStatus;
  final int pageIndex;
  
  HomeState({
    this.loadStatus = LoadStatus.initial,
    this.pageIndex = 0
  });
  @override
  List<Object?> get props => [
        loadStatus,
        pageIndex
      ];
  @override
  HomeState copyWith({
    LoadStatus? loadStatus,
    int? pageIndex
  }) {
    return HomeState(
      loadStatus: loadStatus ?? this.loadStatus,
      pageIndex:pageIndex?? this.pageIndex
    );
  }
}
