import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../components/profile_edit_textfield.dart';
import '../cubits/edit_profile/edit_profile_cubit.dart';
import '../cubits/edit_profile/edit_profile_state.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! AppBar
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            if (sl<EditProfileCubit>()
                .editProfileKey
                .currentState!
                .validate()) {
              //* Update Method
              sl<EditProfileCubit>().clearController();
              Navigator.pop(context);
            }
          },
          child: Text(AppStrings.editProfile),
        ),
        titleTextStyle: CustomTextStyle.poppins600White24,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            sl<EditProfileCubit>().clearController();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      //! Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 28.h),
          child: Column(
            children: [
              //! Image
              Center(
                child: CircleAvatar(
                  radius: 66.r,
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    Icons.person_outline,
                    color: AppColors.white,
                    size: 70.w,
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              //! Form
              BlocBuilder<EditProfileCubit, EditProfileState>(
                builder: (context, state) {
                  final editProfileCubit =
                      BlocProvider.of<EditProfileCubit>(context);
                  return Form(
                    key: editProfileCubit.editProfileKey,
                    child: Column(
                      children: [
                        //* Full Name
                        ProfileEditingTextField(
                          controller: editProfileCubit.nameController,
                          labelText: AppStrings.fullName,
                          hintText: AppStrings.enterYourName,
                          prefixIcon: Icons.person_outline_outlined,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return AppStrings.pleaseEnterValidName
                                  ;
                            }
                            return null;
                          },
                        ),
                        //* Phone Number
                        ProfileEditingTextField(
                          controller: editProfileCubit.phoneController,
                          labelText: AppStrings.phoneNumber,
                          hintText: AppStrings.enterYourPhoneNumber,
                          prefixIcon: Icons.local_phone_outlined,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.length != 11) {
                              return AppStrings.pleaseEnterValidPhoneNumber
                                  ;
                            }
                            return null;
                          },
                        ),
                        //* Email
                        ProfileEditingTextField(
                          controller: editProfileCubit.emailController,
                          labelText: AppStrings.email,
                          hintText: AppStrings.enterYourEmail,
                          prefixIcon: Icons.mail_outline,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                    .hasMatch(value!) !=
                                true) {
                              return AppStrings.pleaseEnterValidEmail
                                  ;
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
