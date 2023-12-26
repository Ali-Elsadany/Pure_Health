import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class CustomListTileSetting extends StatelessWidget {
  const CustomListTileSetting({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing, this.onTap,
  });
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385.w,

      // height: 60.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        onTap: onTap,
          leading: leading,
          title: title,
          titleTextStyle: CustomTextStyle.poppins700secondry15,
          subtitle: subtitle, subtitleTextStyle: CustomTextStyle.poppins500secondary12,
          trailing: trailing,),
    );
  }
}
