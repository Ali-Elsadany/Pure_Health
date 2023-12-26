import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_health/feature/profile/components/rating_star.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../presentation/cubits/settings_cubit/settings_cubit.dart';
import '../presentation/cubits/settings_cubit/settings_state.dart';
import 'comment_text_field.dart';

class RatingAlertDialog extends StatelessWidget {
  const RatingAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 35.h),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      content: SizedBox(
        width: 385.w,
        height: 423.h,
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            final settingsCubit = BlocProvider.of<SettingsCubit>(context);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! Text
                Text(
                  AppStrings.sendUsYourRatting,
                  style: CustomTextStyle.poppins600White24,
                ),
                SizedBox(height: 56.h),
                //! Starts Row
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingStar(index: 1),
                    RatingStar(index: 2),
                    RatingStar(index: 3),
                    RatingStar(index: 4),
                    RatingStar(index: 5),
                  ],
                ),
                SizedBox(height: 26.h),
                //! Comment
                Text(
                  AppStrings.yourComment,
                  style: CustomTextStyle.poppins600White16,
                ),
                SizedBox(height: 12.h),
                CommentTextField(
                  controller: settingsCubit.rateCommentController,
                  maxLines: 2,
                ),
                const Spacer(),
                Center(
                  child: CustomElevatedButton(
                    onPressed: () {
                      settingsCubit.clearControllers();
                      settingsCubit.rating = 1;
                      Navigator.pop(context);
                    },
                    text: AppStrings.submit,
                    backgroundColor: AppColors.white,
                    textColor: AppColors.secondary,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
