import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    super.key,
    required this.controller,
    this.maxLines,
    this.hintText,
  });
  final TextEditingController controller;
  final int? maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      maxLines: maxLines ?? 1,
      cursorColor: AppColors.secondary,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,
        hintText: hintText,
        hintStyle: CustomTextStyle.poppins600secondary16,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.transparent,
          ),
        ),
      ),
    );
  }
}
