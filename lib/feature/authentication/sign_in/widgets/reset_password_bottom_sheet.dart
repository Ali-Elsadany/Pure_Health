import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_form_text_filed.dart';
import '../../common/custom_authentication_btn.dart';
import '../forgot_password_cubit/forgot_password_cubit.dart';
import '../forgot_password_cubit/forgot_password_state.dart';

showResetPasswordBottomSheet(context) {
  showBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.secondary, width: 2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))),
    builder: (context) {
      return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SizedBox(
            height: 760.h,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: ListView(
                children: [
                  SizedBox(height: 47.h),
                  Text(AppStrings.resetPassword,
                      style: CustomTextStyle.poppins600secondary24),
                  SizedBox(height: 18.h),
                  Text(
                    AppStrings.enterTheCodeYouReceiveInMail,
                    style: CustomTextStyle.poppins400secondary18,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    AppStrings.enterTheFiveDigitsCode,
                    style: CustomTextStyle.poppins600secondary20,
                  ),
                  SizedBox(height: 10.h),
                  //!OTP
                  OtpTextField(
                    numberOfFields: 5,
                    showFieldAsBox: true,
                    borderColor: AppColors.primary,
                    fillColor: AppColors.primary,
                    cursorColor: AppColors.white,
                    enabledBorderColor: AppColors.primary,
                    focusedBorderColor: AppColors.primary,
                    disabledBorderColor: AppColors.primary,
                    textStyle: CustomTextStyle.poppins400White16,
                    fieldWidth: 50.w,
                    borderRadius: BorderRadius.circular(100),
                    filled: true,
                    onCodeChanged: (String code) {},

                    onSubmit: (String verificationCode) {}, // end onSubmit
                  ),
                  SizedBox(height: 30.h),

                  Text(
                    AppStrings.enterNewPassword,
                    style: CustomTextStyle.poppins600secondary20,
                  ),
                  SizedBox(height: 10.h),
                  //!Password Text Filed
                  CustomFormTextFiled(
                    obscureText: context
                        .read<ForgotPasswordCubit>()
                        .obscurePasswordTextValue,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.thisFieldISRequired;
                      }
                      return null;
                    },
                    controller: context
                        .read<ForgotPasswordCubit>()
                        .passwordTextEditingController,
                    labelText: AppStrings.passward,
                    labelTextStyle: CustomTextStyle.poppins400secondary16,
                    color: AppColors.secondary,
                    prefixIconColor: AppColors.secondary,
                    suffixIconColor: AppColors.secondary,
                    prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                    suffixIcon: IconButton(
                      icon: Icon(
                        context
                                    .read<ForgotPasswordCubit>()
                                    .obscurePasswordTextValue ==
                                true
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.secondary,
                      ),
                      onPressed: () {
                        context
                            .read<ForgotPasswordCubit>()
                            .obscurePasswordText();
                      },
                    ),
                  ),
                  //!Confirm Password Text Filed
                  SizedBox(height: 30.h),
                  Text(
                    AppStrings.confirmNewPassword,
                    style: CustomTextStyle.poppins600secondary20,
                  ),
                  SizedBox(height: 10.h),
                  CustomFormTextFiled(
                    obscureText: context
                        .read<ForgotPasswordCubit>()
                        .obscureConfirmPasswordTextValue,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.thisFieldISRequired;
                      }
                      return null;
                    },
                    controller: context
                        .read<ForgotPasswordCubit>()
                        .confirmPasswordTextEditingController,
                    labelText: AppStrings.passward,
                    labelTextStyle: CustomTextStyle.poppins400secondary16,
                    color: AppColors.secondary,
                    prefixIconColor: AppColors.secondary,
                    suffixIconColor: AppColors.secondary,
                    prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                    suffixIcon: IconButton(
                      icon: Icon(
                        context
                                    .read<ForgotPasswordCubit>()
                                    .obscureConfirmPasswordTextValue ==
                                true
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.secondary,
                      ),
                      onPressed: () {
                        context
                            .read<ForgotPasswordCubit>()
                            .obscureConfirmPasswordText();
                      },
                    ),
                  ),
                  //!resetPassword
                  SizedBox(height: 45.h),
                  CustomAuthenticationBtn(
                    text: AppStrings.resetPassword,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    width: MediaQuery.of(context).size.width,
                    height: 60.h,
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.secondary,
                    textStyle: CustomTextStyle.poppins600White24,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
