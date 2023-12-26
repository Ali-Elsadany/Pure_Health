import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/common.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/inkwell_icon_button.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Row(
        children: [
          Image.asset(
            AppAssets.appLogo,
            width: 25.w,
            height: 30.h,
          ),
          SizedBox(
            width: 6.5.w,
          ),
          Text(
            AppStrings.pureHealth,
            style: CustomTextStyle.peralta400White16
                .copyWith(color: AppColors.secondary),
          ),
          const Spacer(),
          InkWellIconButton(
            height: 40.h,
            width: 40.w,
            icon: const Icon(Icons.notifications_outlined,
                color: AppColors.white),
            onTap: () {
              navigate(context: context, route: Routes.noteficationScreen);
            },
          ),
          SizedBox(
            width: 15.w,
          ),
          InkWellIconButton(
              height: 40.h,
              width: 40.w,
              icon: const Icon(
                Icons.messenger_outline,
                color: AppColors.white,
              ),
              onTap: () {
                navigate(context: context, route: Routes.chatsScreen);
              }),
        ],
      ),
    );
  }
}
