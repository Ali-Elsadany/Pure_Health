import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/common.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../components/profile_details_component.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! AppBar
      appBar: AppBar(
        title: const Text(AppStrings.profileDetailes),
        titleTextStyle: CustomTextStyle.poppins600White24,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: [
          TextButton(
            onPressed: () {
              navigate(context: context, route: Routes.profileEdit);
            },
            child: Text(
              AppStrings.edit,
              style: CustomTextStyle.poppins600White24,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      //! Body
      body: Padding(
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
            //! Profile Details
            const ProfileDetailsComponent(
              title: AppStrings.fullName,
              subTitle: 'Ali Elsadany',
            ),
            const ProfileDetailsComponent(
              title: AppStrings.phoneNumber,
              subTitle: '01147722385',
            ),
            const ProfileDetailsComponent(
              title: AppStrings.email,
              subTitle: 'alieelsadany@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
