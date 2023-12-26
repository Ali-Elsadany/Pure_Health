import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());
  TextEditingController forgotPasswordEmailTextEditingController =
      TextEditingController();
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
