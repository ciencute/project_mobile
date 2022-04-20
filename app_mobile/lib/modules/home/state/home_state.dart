part of '../cubit/home_cubit.dart';

class HomeState extends BaseState {

  final HomeUIModel? homeModel;
  final LoadStatus loadStatus;
  final PaginationModel? lstUiItem;
  final int page;
  
  HomeState({
    this.loadStatus = LoadStatus.initial,
    this.page = 1,
     this.homeModel,
     this.lstUiItem
  });
  @override
  List<Object?> get props => [
        loadStatus,
        page,
        homeModel,
        lstUiItem
      ];
  @override
  HomeState copyWith({
    LoadStatus? loadStatus,
    int? page,
    HomeUIModel? homeModel,
    PaginationModel? lstUiItem
  }) {
    return HomeState(
      loadStatus: loadStatus ?? this.loadStatus,
      page:page?? this.page,
      homeModel: homeModel??this.homeModel,
      lstUiItem:lstUiItem??this.lstUiItem
    );
  }
}
