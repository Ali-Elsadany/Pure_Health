import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';
import 'custom_form_banner.dart';
import 'custom_title_header.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomTitleHeader(text: AppStrings.letsStartWithSignIn),
        SizedBox(height: 250.h),
        const CustomFormBanner(),
      ],
    );
  }
}
