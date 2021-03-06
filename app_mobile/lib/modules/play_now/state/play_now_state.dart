part of '../cubit/play_now_cubit.dart';

class PlayNowState extends BaseState {
  final LoadStatus loadStatus;
  final List<UIItem> lstUiItem;
  final int lastPages;
  int page;

  PlayNowState({
    this.loadStatus = LoadStatus.initial,
    this.lastPages = 0,
    this.lstUiItem = const [],
    this.page = 1,
  });
  @override
  List<Object?> get props => [loadStatus, lstUiItem, lastPages, page];
  @override
  PlayNowState copyWith(
      {LoadStatus? loadStatus,
      int? page,
      List<UIItem>? lstUiItem,
      int? lastPages}) {
    return PlayNowState(
        loadStatus: loadStatus ?? this.loadStatus,
        lastPages: lastPages ?? this.lastPages,
        lstUiItem: lstUiItem ?? this.lstUiItem,
        page: page ?? this.page);
  }
}
