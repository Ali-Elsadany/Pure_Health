import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    super.key,
    required this.image,
    required this.text,
    required this.time,
  });
  final String image;
  final String text;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* Image
            CircleAvatar(
              radius: 30.r,
              backgroundImage: AssetImage(image),
              backgroundColor: AppColors.transparent,
            ),
            SizedBox(width: 6.w),
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: CustomTextStyle.poppins500secondary14,
                      softWrap: true,
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      time,
                      style: CustomTextStyle.poppins500secondary14.copyWith(
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
