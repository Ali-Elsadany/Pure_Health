import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileInitial());

  //! Form
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> editProfileKey = GlobalKey<FormState>();
  //! Clear Controller
  clearController() {
    nameController.clear();
    phoneController.clear();
    emailController.clear();
  }
}
