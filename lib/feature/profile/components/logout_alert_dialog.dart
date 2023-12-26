import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../presentation/cubits/profile_cubit/profile_cubit.dart';
import '../presentation/cubits/profile_cubit/profile_state.dart';

class LogoutAlertDialog extends StatelessWidget {
  const LogoutAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      contentPadding: const EdgeInsets.all(0),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      content: Container(
        height: 420.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            //! Title
            Text(
              AppStrings.seeYouSoon,
              style: CustomTextStyle.openOleo700white40,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            //! Sub Title
            Text(
              AppStrings.youAreAboutToLogoutAreYouSure,
              style: CustomTextStyle.poppins700White24,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h),
            //! Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //* Cancel Button
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    AppStrings.cancel,
                    style: CustomTextStyle.poppins700White24,
                  ),
                ),
                SizedBox(width: 40.w),
                //* Confirm Logout Button
                CustomElevatedButton(
                  onPressed: () {
                    //! ------ Logout Method here
                  },
                  text: AppStrings.confirmLogout,
                  textStyle: CustomTextStyle.poppins600secondary20,
                  backgroundColor: AppColors.white,
                  textColor: AppColors.secondary,
                  width: 187.w,
                ),
                SizedBox(height: 20.h),
              ],
            ),
            const Spacer(),
            //! Check Box Row
            BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                final profileCubit = BlocProvider.of<ProfileCubit>(context);
                return GestureDetector(
                  onTap: () {
                    profileCubit.changeLogoutChechBox();
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        value: profileCubit.logoutChechBox,
                        onChanged: (value) {
                          profileCubit.changeLogoutChechBox();
                        },
                        fillColor:
                            const MaterialStatePropertyAll(AppColors.white),
                        checkColor: AppColors.secondary,
                      ),
                      Text(
                        AppStrings.logoutFromAllDevices,
                        style: CustomTextStyle.peralta400White16,
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 15.h)
          ],
        ),
      ),
    );
  }
}
