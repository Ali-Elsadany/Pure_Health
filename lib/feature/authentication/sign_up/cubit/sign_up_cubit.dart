import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_health/feature/authentication/sign_up/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  GlobalKey<FormState> signUpFormController = GlobalKey();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  bool obscurePasswordTextValue = true;
  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ChangePasswordSuffixIcon());
  }

  bool obscureConfirmPasswordTextValue = true;
  void obscureConfirmPasswordText() {
    if (obscureConfirmPasswordTextValue == true) {
      obscureConfirmPasswordTextValue = false;
    } else {
      obscureConfirmPasswordTextValue = true;
    }
    emit(ChangePasswordSuffixIcon());
  }
}
