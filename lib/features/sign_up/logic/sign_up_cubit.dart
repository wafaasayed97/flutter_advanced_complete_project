import 'package:flutter/cupertino.dart';
import 'package:flutter_advanced_complete_project/features/sign_up/data/models/sign_up_requset_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_advanced_complete_project/features/sign_up/logic/sign_up_state.dart';

import '../data/repo/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  void emitSignUpStates() async {
    emit(const SignUpState.loading());

    final response = await _signUpRepo.signUp(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        phone: phoneController.text,
        gender: 0
    ));
    response.when(success: (signUpResponse) {
      emit(SignUpState.success(signUpResponse));
    }, failure: (error) {
      emit(SignUpState.error(error: error.apiErrorModel.message));
    });
  }
}
