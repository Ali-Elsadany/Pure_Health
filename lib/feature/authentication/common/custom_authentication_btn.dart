import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_elevated_button.dart';

class CustomAuthenticationBtn extends StatelessWidget {
  const CustomAuthenticationBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.textStyle,
  });
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: onPressed,
      text: text,
      textColor: textColor ?? AppColors.primary,
      borderColor: AppColors.white,
      backgroundColor: backgroundColor ?? AppColors.white,
      width: width ?? 300.w,
      height: height ?? 45.h,
      textStyle: textStyle ?? CustomTextStyle.poppins600primary24,
    );
  }
}
