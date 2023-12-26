import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.width,
    this.height,
    this.backgroundColor = AppColors.primary,
    this.textColor = AppColors.white,
    this.borderColor = AppColors.transparent,
    required this.onPressed,
    required this.text,
    this.textStyle,
  });
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 165.w, height ?? 43.h),
        backgroundColor: backgroundColor,
        elevation: 5,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: borderColor,
          ),
        ),
      ),
      child: Text(
        text,
        style: textStyle ??
            CustomTextStyle.poppins400White16.copyWith(
              color: textColor,
            ),
      ),
    );
  }
}
