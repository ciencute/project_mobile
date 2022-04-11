part of '../cubit/detail_cubit.dart';

class DetailState extends BaseState {
  final LoadStatus loadStatus;
  DetailState({this.loadStatus = LoadStatus.initial});
  @override
  List<Object?> get props => [
        loadStatus,
      ];
  @override
  DetailState copyWith({
    LoadStatus? loadStatus,
  }) {
    return DetailState(
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
