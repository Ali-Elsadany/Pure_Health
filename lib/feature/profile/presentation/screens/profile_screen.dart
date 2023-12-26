import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/common.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../components/list_tile.dart';
import '../../components/logout_alert_dialog.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.profile,
                      style: CustomTextStyle.poppins700secondary26,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),

                // Profile Image

                CircleAvatar(
                  radius: 70.r,
                  backgroundColor: AppColors.primary,
                  child: Image.asset(AppAssets.profile),
                ),
                SizedBox(
                  height: 14.h,
                ),

                // Name

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Name Here',
                      style: CustomTextStyle.poppins600secondary24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),

                // history

                ListTileProfile(
                  desc: AppStrings.history,
                  image: Image.asset(AppAssets.history),
                  onTap: () {
                    navigate(context: context, route: Routes.historyScreen);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                // profile detailes
                ListTileProfile(
                  desc: AppStrings.profileDetailes,
                  image: Image.asset(AppAssets.profileDetailes),
                  onTap: () {
                    navigate(context: context, route: Routes.profileDetails);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                //chats
                ListTileProfile(
                  desc: AppStrings.chats,
                  image: Image.asset(AppAssets.chat),
                  onTap: () {
                    navigate(context: context, route: Routes.chatsScreen);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                //settings
                ListTileProfile(
                  desc: AppStrings.settings,
                  image: Image.asset(AppAssets.setting),
                  onTap: () {
                    navigate(context: context, route: Routes.settingScreen);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                //help
                ListTileProfile(
                  desc: AppStrings.help,
                  image: Image.asset(AppAssets.help),
                  onTap: () {},
                ),
                SizedBox(
                  height: 10.h,
                ),
                //logout
                ListTileProfile(
                  desc: AppStrings.logout,
                  image: Image.asset(AppAssets.logout),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const LogoutAlertDialog(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
