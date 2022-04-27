part of '../cubit/category_cubit.dart';

class CategoryState extends BaseState {
  final LoadStatus loadStatus;
  final int pageIndex;
  final List<Categories>? lstUiItem;
  CategoryState({
    this.loadStatus = LoadStatus.initial,
    this.pageIndex = 0,
    this.lstUiItem,
  });
  @override
  List<Object?> get props => [loadStatus, pageIndex];
  @override
  CategoryState copyWith(
      {LoadStatus? loadStatus, int? pageIndex, List<Categories>? lstUiItem}) {
    return CategoryState(
      loadStatus: loadStatus ?? this.loadStatus,
      pageIndex: pageIndex ?? this.pageIndex,
      lstUiItem: lstUiItem ?? this.lstUiItem,
    );
  }
}
