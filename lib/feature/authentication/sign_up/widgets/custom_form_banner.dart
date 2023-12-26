import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_health/feature/authentication/sign_up/widgets/sgin_up_form.dart';

import '../../sign_in/widgets/custom_banner.dart';

class CustomSignUpFormBanner extends StatelessWidget {
  const CustomSignUpFormBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //!White Background
        const CustomBanner(),
        //!Sign In Form
        Positioned(
          top: -200.h,
          right: 44.w,
          child: const SignUpForm(),
        ),
      ],
    );
  }
}
