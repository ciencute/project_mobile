part of '../cubit/movies_by_actor_cubit.dart';

class MoviesByActorState extends BaseState {
  final LoadStatus loadStatus;
  final List<UIItem> lstUiItem;
  final int lastPages;
  int page;

  MoviesByActorState({
    this.loadStatus = LoadStatus.initial,
    this.lastPages = 0,
    this.lstUiItem = const [],
    this.page = 1,
  });
  @override
  List<Object?> get props => [loadStatus, lstUiItem, lastPages, page];
  @override
  MoviesByActorState copyWith(
      {LoadStatus? loadStatus,
      int? page,
      List<UIItem>? lstUiItem,
      int? lastPages}) {
    return MoviesByActorState(
        loadStatus: loadStatus ?? this.loadStatus,
        lastPages: lastPages ?? this.lastPages,
        lstUiItem: lstUiItem ?? this.lstUiItem,
        page: page ?? this.page);
  }
}
