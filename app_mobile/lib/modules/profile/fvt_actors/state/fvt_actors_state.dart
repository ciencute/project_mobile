import '../../../../api/models/actors/actors_identity.dart';
import '../../../../api/models/enums/load_status.dart';
import '../../../../api/models/ui_item/ui_item.dart';
import '../../../../base/base_cubit.dart';

class FavariteActorsState extends BaseState {
  final LoadStatus loadStatus;
  final List<ActorsModel> lstUiItem;
  final int lastPages;
  int page;
  FavariteActorsState({
    this.loadStatus = LoadStatus.initial,
    this.lastPages = 0,
    this.lstUiItem = const [],
    this.page = 1,
  });
  @override
  List<Object?> get props => [loadStatus, lstUiItem, lastPages, page];
  @override
  FavariteActorsState copyWith(
      {LoadStatus? loadStatus,
      int? page,
      List<ActorsModel>? lstUiItem,
      int? lastPages}) {
    return FavariteActorsState(
        loadStatus: loadStatus ?? this.loadStatus,
        lastPages: lastPages ?? this.lastPages,
        lstUiItem: lstUiItem ?? this.lstUiItem,
        page: page ?? this.page);
  }
}
