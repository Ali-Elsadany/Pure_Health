import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class RateContainer extends StatelessWidget {
  const RateContainer({
    super.key,
    this.borderColor = AppColors.secondary, required this.rate,
  });
  final Color borderColor;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            rate.toString(),
            style: CustomTextStyle.poppins600White16,
          ),
          SizedBox(
            width: 8.h,
          ),
          const Icon(
            Icons.star,
            color: AppColors.markedStars,
            size: 16,
          )
        ],
      ),
    );
  }
}
