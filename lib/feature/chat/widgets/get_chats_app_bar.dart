import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';

AppBar getChatsAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        AppStrings.chats,
        style: CustomTextStyle.poppins600White24,
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.white,
        ),
      ),
    );
  }