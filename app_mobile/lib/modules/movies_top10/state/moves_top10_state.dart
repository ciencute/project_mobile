


import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../base/base_cubit.dart';


class MoviesTop10State extends BaseState {
  final LoadStatus loadStatus;
  final List<UIItem>? lstUiItem;

  MoviesTop10State({
    this.loadStatus = LoadStatus.initial,
    this.lstUiItem,
  });
  @override
  List<Object?> get props => [loadStatus, lstUiItem];
  @override
  MoviesTop10State copyWith(
      {LoadStatus? loadStatus,
      int? page,
      List<UIItem>? lstUiItem,
      int? lastPages}) {
    return MoviesTop10State(
        loadStatus: loadStatus ?? this.loadStatus,
        lstUiItem: lstUiItem ?? this.lstUiItem,);
  }
}
