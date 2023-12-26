import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/common.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class ContainerReuse extends StatelessWidget {
  const ContainerReuse(
      {Key? key,
      required this.imageOfDis,
      required this.desc,
      required this.distanceBetweenImageAndText,
      //required this.onTap
      })
      : super(key: key);
  //final void Function()? onTap;
  final Image? imageOfDis;
  final String desc;
  final double distanceBetweenImageAndText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigate(context: context, route: Routes.doctorsCategory);
      },
      child: Container(
        height: 230.h,
        width: 185.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 7.h,
            ),
            SizedBox(
              height: 111,
              width: 166,
              child: imageOfDis,
            ),
            SizedBox(
              height: distanceBetweenImageAndText,
            ),
            Text(
              desc,
              style: CustomTextStyle.poppins600White20,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
