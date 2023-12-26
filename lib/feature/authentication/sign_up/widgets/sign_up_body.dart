import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';
import '../../sign_in/widgets/custom_title_header.dart';
import 'custom_form_banner.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomTitleHeader(text: AppStrings.letsStartWithSignUp),
        SizedBox(height: 250.h),
        const CustomSignUpFormBanner()
      ],
    );
  }
}
