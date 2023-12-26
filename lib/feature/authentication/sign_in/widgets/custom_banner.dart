import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428.w,
      height: 568.h,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70),
        ),
      ),
    );
  }
}
