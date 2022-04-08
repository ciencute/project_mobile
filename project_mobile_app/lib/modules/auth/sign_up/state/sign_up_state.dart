part of '../cubit/sign_up_cubit.dart';

class SignUpState extends BaseState {
  final LoadStatus loadStatus;
  SignUpState({this.loadStatus = LoadStatus.initial});
  @override
  List<Object?> get props => [
        loadStatus,
      ];
  SignUpState copyWith({
    LoadStatus? loadStatus,
  }) {
    return SignUpState(
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
