part of '../cubit/home_cubit.dart';

class HomeState extends BaseState {

  final HomeModel? homeModel;
  final LoadStatus loadStatus;
  final int pageIndex;
  
  HomeState({
    this.loadStatus = LoadStatus.initial,
    this.pageIndex = 0,
     this.homeModel,
  });
  @override
  List<Object?> get props => [
        loadStatus,
        pageIndex,
        homeModel
      ];
  @override
  HomeState copyWith({
    LoadStatus? loadStatus,
    int? pageIndex,
    HomeModel? homeModel,
  }) {
    return HomeState(
      loadStatus: loadStatus ?? this.loadStatus,
      pageIndex:pageIndex?? this.pageIndex,
      homeModel: homeModel??this.homeModel
    );
  }
}
