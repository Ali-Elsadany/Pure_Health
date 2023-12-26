import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_health/feature/profile/presentation/cubits/settings_cubit/settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  //! Feed Back Alert
  TextEditingController feedBackCommentController = TextEditingController();
  bool bugCheckBox = true;
  bool commentCheckBox = false;
  bool otherCheckBox = false;
  void changeCheckBox(String type) {
    bugCheckBox = false;
    commentCheckBox = false;
    otherCheckBox = false;
    if (type == "bug") {
      bugCheckBox = true;
    }
    if (type == "comment") {
      commentCheckBox = true;
    }
    if (type == "other") {
      otherCheckBox = true;
    }
    emit(changeCheckBoxState());
  }

  //! Rating Alert
  TextEditingController rateCommentController = TextEditingController();
  //* Rating Stars
  int rating = 1;
  void changeRating(index) {
    switch (index) {
      case 1:
        rating = 1;
      case 2:
        rating = 2;
      case 3:
        rating = 3;
      case 4:
        rating = 4;
      case 5:
        rating = 5;
        break;
      default:
    }
    emit(RateChangeState());
  }

  void clearControllers() {
    rateCommentController.clear();
  }
}
