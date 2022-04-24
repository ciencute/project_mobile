part of '../cubit/detail_cubit.dart';

class DetailState extends BaseState {
  final LoadStatus loadStatus;
  final LoadStatus actionLike;
  final UIItem? uiItem;
  final bool isCheckResult;

  DetailState(
      {this.loadStatus = LoadStatus.initial,
      this.uiItem,
      this.isCheckResult = false,
      this.actionLike = LoadStatus.initial});
  @override
  List<Object?> get props => [loadStatus, uiItem, isCheckResult, actionLike];
  @override
  DetailState copyWith(
      {LoadStatus? loadStatus,
      LoadStatus? actionLike,
      int? page,
      UIItem? uiItem,
      int? lastPages,
      bool? isCheckResult}) {
    return DetailState(
        loadStatus: loadStatus ?? this.loadStatus,
        uiItem: uiItem ?? this.uiItem,
        isCheckResult: isCheckResult ?? this.isCheckResult,
        actionLike: actionLike ?? this.actionLike);
  }
}
