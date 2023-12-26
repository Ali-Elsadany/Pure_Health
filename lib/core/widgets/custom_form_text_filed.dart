import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomFormTextFiled extends StatelessWidget {
  const CustomFormTextFiled({
    super.key,
    required this.controller,
    this.labelText,
    this.color,
    this.prefixIcon,
    this.prefixIconColor,
    this.validator,
    this.suffixIcon,
    this.suffixIconColor,
    this.obscureText,
    this.labelTextStyle,
    this.hintText,
    this.hintTextStyle,
    this.keyboardType,
  });
  final TextEditingController controller;
  final Color? color;
  final String? labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final TextStyle? labelTextStyle;
  final TextStyle? hintTextStyle;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: labelTextStyle ?? CustomTextStyle.poppins400White16,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: getBorderSide(color: color),
        enabledBorder: getBorderSide(color: color),
        errorBorder: getBorderSide(color: AppColors.red),
        focusedBorder: getBorderSide(color: color),
        labelText: labelText,
        labelStyle: labelTextStyle ?? CustomTextStyle.poppins400White16,
        hintText: hintText,
        hintStyle: hintTextStyle ?? CustomTextStyle.poppins400White16,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? AppColors.white,
        prefixIconColor: prefixIconColor ?? AppColors.white,
      ),
    );
  }
}

OutlineInputBorder getBorderSide({Color? color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? AppColors.white,
    ),
    borderRadius: BorderRadius.circular(
      14.r,
    ),
  );
}
