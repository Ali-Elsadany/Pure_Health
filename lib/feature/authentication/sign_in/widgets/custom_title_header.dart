import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_styles.dart';

class CustomTitleHeader extends StatelessWidget {
  const CustomTitleHeader({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 68.h),
          SizedBox(
            width: 178.w,
            child: Text(
              text,
              style: CustomTextStyle.poppins600White24,
            ),
          ),
        ],
      ),
    );
  }
}
