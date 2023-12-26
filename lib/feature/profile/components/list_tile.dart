import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class ListTileProfile extends StatelessWidget {
   const ListTileProfile({
    super.key,
    required this.image,
    required this.onTap,
    required this.desc
  });
  final Image? image;
  final void Function()? onTap;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.r,
        backgroundColor: AppColors.lightGrey,
        child: image,
      ),
      title: Text(desc,style: CustomTextStyle.openSans600secondry20,),
      trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
      onTap: onTap,
    );
  }
}
