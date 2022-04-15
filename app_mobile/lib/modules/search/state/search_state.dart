
import '../../../api/models/enums/load_status.dart';
import '../../../base/base_cubit.dart';




class SearchState extends BaseState {
  final LoadStatus loadStatus;
   final int pageIndex;
 
  SearchState({this.loadStatus = LoadStatus.initial,this.pageIndex = 0,});
  @override
  List<Object?> get props => [loadStatus,pageIndex];
  @override
  SearchState copyWith({LoadStatus? loadStatus,int? pageIndex,}) {
    return SearchState(
        loadStatus: loadStatus ?? this.loadStatus,
         pageIndex: pageIndex ?? this.pageIndex,
       );
  }
}
