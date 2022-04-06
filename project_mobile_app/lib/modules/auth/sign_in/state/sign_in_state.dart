part of '../cubit/sign_in_cubit.dart';

class SignInState extends BaseState {
  final LoadStatus loadStatus;
  SignInState({this.loadStatus = LoadStatus.initial});
  @override
  List<Object?> get props => [
        loadStatus,
      ];
  @override
  SignInState copyWith({
    LoadStatus? loadStatus,
  }) {
    return SignInState(
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
