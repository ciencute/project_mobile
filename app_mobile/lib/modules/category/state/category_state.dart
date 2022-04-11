part of '../cubit/category_cubit.dart';

class CategoryState extends BaseState {
  final LoadStatus loadStatus;
   final int pageIndex;
 
  CategoryState({this.loadStatus = LoadStatus.initial,this.pageIndex = 0,});
  @override
  List<Object?> get props => [loadStatus,pageIndex];
  @override
  CategoryState copyWith({LoadStatus? loadStatus,int? pageIndex,}) {
    return CategoryState(
        loadStatus: loadStatus ?? this.loadStatus,
         pageIndex: pageIndex ?? this.pageIndex,
       );
  }
}
