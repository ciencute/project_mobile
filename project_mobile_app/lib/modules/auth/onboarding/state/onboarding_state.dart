part of '../cubit/onboarding_cubit.dart';

class OnboardingState extends BaseState {
  final LoadStatus loadStatus;
  OnboardingState({this.loadStatus = LoadStatus.initial});
  @override
  List<Object?> get props => [
        loadStatus,
      ];
  @override
  OnboardingState copyWith({
    LoadStatus? loadStatus,
  }) {
    return OnboardingState(
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
