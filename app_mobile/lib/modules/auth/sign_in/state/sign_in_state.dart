part of '../cubit/sign_in_cubit.dart';

class SignInState extends BaseState {
  final LoadStatus loadStatus;
  final UserModel? userModel;
  final String? emailOrPhone;
  final String? password;
  SignInState(
      {this.loadStatus = LoadStatus.initial,
      this.userModel,
      this.emailOrPhone,
      this.password});
  @override
  List<Object?> get props => [
        loadStatus,
        userModel,
        emailOrPhone,
        password,
      ];
  @override
  SignInState copyWith({
    LoadStatus? loadStatus,
    UserModel? userModel,
    String? emailOrPhone,
    String? password
  }) {
    return SignInState(
      loadStatus: loadStatus ?? this.loadStatus,
      userModel: userModel ?? userModel,
      emailOrPhone: emailOrPhone ?? emailOrPhone,
      password: password ?? password,
    );
  }
}
