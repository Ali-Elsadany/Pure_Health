import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_health/feature/authentication/sign_in/widgets/reset_password_bottom_sheet.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_form_text_filed.dart';
import '../../common/custom_authentication_btn.dart';
import '../forgot_password_cubit/forgot_password_cubit.dart';
import '../forgot_password_cubit/forgot_password_state.dart';

class ForgetPasswordBottomSheet extends StatelessWidget {
  const ForgetPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          child: Text(
            AppStrings.forgetPassword,
            style: CustomTextStyle.poppins600White16,
          ),
          onTap: () {
            showBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.secondary, width: 2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
              builder: (context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.w),
                    child: ListView(
                      children: [
                        SizedBox(height: 47.h),
                        Text(AppStrings.forgetPassword,
                            style: CustomTextStyle.poppins600secondary24),
                        SizedBox(height: 18.h),
                        Text(
                          AppStrings.enteryourEmailForVerificationProcess
                              ,
                          style: CustomTextStyle.poppins400secondary18,
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          AppStrings.email,
                          style: CustomTextStyle.poppins600secondary24,
                        ),
                        SizedBox(height: 14.h),
                        CustomFormTextFiled(
                          controller: context
                              .read<ForgotPasswordCubit>()
                              .forgotPasswordEmailTextEditingController,
                          labelText: AppStrings.email,
                          prefixIcon: Icon(Icons.email_outlined, size: 30.w),
                          color: AppColors.secondary,
                          prefixIconColor: AppColors.secondary,
                          labelTextStyle: CustomTextStyle.poppins400secondary16,
                        ),
                        SizedBox(height: 45.h),
                        CustomAuthenticationBtn(
                          text: AppStrings.continuee,
                          onPressed: () {
                            showResetPasswordBottomSheet(context);
                          },
                          width: MediaQuery.of(context).size.width,
                          height: 60.h,
                          backgroundColor: AppColors.primary,
                          textColor: AppColors.secondary,
                          textStyle: CustomTextStyle.poppins600White24,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
