import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class FeedBackCheckBoxTile extends StatelessWidget {
  const FeedBackCheckBoxTile({
    super.key,
    required this.title,
    required this.value,
    this.onTap,
    this.onChanged,
  });
  final String title;
  final bool value;
  final Function()? onTap;
  final Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(color: AppColors.white),
            ),
            child: Transform.scale(
              scale: 0.6,
              child: Checkbox(
                value: value,
                onChanged: onChanged,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                activeColor: AppColors.white,
              ),
            ),
          ),
          SizedBox(width: 5.w),
          Text(
            title,
            style: CustomTextStyle.poppins600White16,
          ),
        ],
      ),
    );
  }
}
