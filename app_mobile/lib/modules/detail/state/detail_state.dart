part of '../cubit/detail_cubit.dart';

class DetailState extends BaseState {
  final LoadStatus loadStatus;
  final UIItem? uiItem;

  DetailState({
    this.loadStatus = LoadStatus.initial,
    this.uiItem,
  });
  @override
  List<Object?> get props => [loadStatus, uiItem];
  @override
  DetailState copyWith(
      {LoadStatus? loadStatus, int? page, UIItem? uiItem, int? lastPages}) {
    return DetailState(
      loadStatus: loadStatus ?? this.loadStatus,
      uiItem: uiItem ?? this.uiItem,
    );
  }
}
