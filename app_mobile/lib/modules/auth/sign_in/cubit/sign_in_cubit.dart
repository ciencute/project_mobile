import 'dart:ffi';

import 'package:app_mobile/routes/app_pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../api/models/enums/load_status.dart';
import '../../../../api/models/user_identity/user_identity.dart';
import '../../../../api/repositories/movie_app_repository.dart';
import '../../../../base/base_cubit.dart';
import '../../../../shared/utils/logger.dart';

part '../state/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({required this.movieAppRepository}) : super(SignInState());
  MovieAppRepository movieAppRepository;

  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      UserModel result = await movieAppRepository.signIn(username, password);
      Get.offAndToNamed(Routes.DASHBOARD);
      emit(state.copyWith(loadStatus: LoadStatus.success));
    } catch (error,stackTrace) {
       logger.e(error, stackTrace: stackTrace);
    }
  }
    void emailChange(String emailOrPhone) {
    emit(state.copyWith(emailOrPhone: emailOrPhone));
  }

  void passChange(String pass) {
    emit(state.copyWith(password: pass));
  }
}
