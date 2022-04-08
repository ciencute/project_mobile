part of '../cubit/profile_cubit.dart';

class ProfileState extends BaseState {
  final LoadStatus loadStatus;
  final InfoUser? infoUser;
  ProfileState({this.loadStatus = LoadStatus.initial, this.infoUser});
  @override
  List<Object?> get props => [loadStatus, infoUser];
  @override
  ProfileState copyWith({LoadStatus? loadStatus, InfoUser? infoUser}) {
    return ProfileState(
        loadStatus: loadStatus ?? this.loadStatus,
        infoUser: infoUser ?? this.infoUser);
  }
}
