part of '../cubit/movies_category_cubit.dart';

class MoviesCategoryState extends BaseState {
  final LoadStatus loadStatus;
  final List<UIItem> lstUiItem;
  final int lastPages;
  int page;

  MoviesCategoryState({
    this.loadStatus = LoadStatus.initial,
    this.lastPages = 0,
    this.lstUiItem = const [],
    this.page = 1,
  });
  @override
  List<Object?> get props => [loadStatus, lstUiItem, lastPages, page];
  @override
  MoviesCategoryState copyWith(
      {LoadStatus? loadStatus,
      int? page,
      List<UIItem>? lstUiItem,
      int? lastPages}) {
    return MoviesCategoryState(
        loadStatus: loadStatus ?? this.loadStatus,
        lastPages: lastPages ?? this.lastPages,
        lstUiItem: lstUiItem ?? this.lstUiItem,
        page: page ?? this.page);
  }
}
