import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../presentation/cubits/settings_cubit/settings_cubit.dart';
import '../presentation/cubits/settings_cubit/settings_state.dart';
import 'comment_text_field.dart';
import 'feed_back_check_back_tile.dart';

class FeedBackAlertDialog extends StatelessWidget {
  const FeedBackAlertDialog({
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
                  AppStrings.sendUsSomeFeedback,
                  style: CustomTextStyle.poppins600White24,
                ),
                SizedBox(height: 28.h),
                Text(
                  AppStrings.doYouHaveaSuggestionOrFoundSomeBug,
                  style: CustomTextStyle.poppins600White16,
                ),
                SizedBox(height: 28.h),
                //! TextField
                CommentTextField(
                  controller: settingsCubit.feedBackCommentController,
                  maxLines: 3,
                  hintText: AppStrings.describeYourIissueOrIdea,
                ),
                SizedBox(height: 26.h),
                //! Check Boxes
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FeedBackCheckBoxTile(
                      title: AppStrings.bug,
                      value: settingsCubit.bugCheckBox,
                      onTap: () {
                        settingsCubit.changeCheckBox("bug");
                      },
                      onChanged: (value) {
                        settingsCubit.changeCheckBox("bug");
                      },
                    ),
                    const Spacer(),
                    FeedBackCheckBoxTile(
                      title: AppStrings.comment,
                      value: settingsCubit.commentCheckBox,
                      onTap: () {
                        settingsCubit.changeCheckBox("comment");
                      },
                      onChanged: (value) {
                        settingsCubit.changeCheckBox("comment");
                      },
                    ),
                    const Spacer(),
                    FeedBackCheckBoxTile(
                      title: AppStrings.other,
                      value: settingsCubit.otherCheckBox,
                      onTap: () {
                        settingsCubit.changeCheckBox("other");
                      },
                      onChanged: (value) {
                        settingsCubit.changeCheckBox("other");
                      },
                    ),
                  ],
                ),
                const Spacer(),
                Center(
                  child: CustomElevatedButton(
                    onPressed: () {
                      settingsCubit.clearControllers();
                      Navigator.pop(context);
                    },
                    text: AppStrings.sendFeedback,
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
