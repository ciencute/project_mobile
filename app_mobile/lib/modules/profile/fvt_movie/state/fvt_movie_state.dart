part of '../cubit/fvt_movie_cubit.dart';

class FvtMovieState extends BaseState {
  final LoadStatus loadStatus;
  final List<UIItem> lstUiItem;
  final int lastPages;
  int page;

  FvtMovieState({
    this.loadStatus = LoadStatus.initial,
    this.lastPages = 0,
    this.lstUiItem = const [],
    this.page = 1,
  });
  @override
  List<Object?> get props => [loadStatus, lstUiItem, lastPages, page];
  @override
  FvtMovieState copyWith(
      {LoadStatus? loadStatus,
      int? page,
      List<UIItem>? lstUiItem,
      int? lastPages}) {
    return FvtMovieState(
        loadStatus: loadStatus ?? this.loadStatus,
        lastPages: lastPages ?? this.lastPages,
        lstUiItem: lstUiItem ?? this.lstUiItem,
        page: page ?? this.page);
  }
}
