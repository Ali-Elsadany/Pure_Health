import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_form_text_filed.dart';

class ProfileEditingTextField extends StatelessWidget {
  const ProfileEditingTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.prefixIcon,
    required this.keyboardType, this.validator,
  });
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            labelText,
            style: CustomTextStyle.poppins400secondary16,
          ),
        ),
        CustomFormTextFiled(
          controller: controller,
          hintText: hintText,
          hintTextStyle: CustomTextStyle.poppins400black16,
          labelTextStyle: CustomTextStyle.poppins400black16,
          color: AppColors.secondary,
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: AppColors.secondary,
          keyboardType: keyboardType,
          validator: validator,
        ),
        SizedBox(height: 23.h),
      ],
    );
  }
}
