
  import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

AppBar getChatAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      title: const Text("Dr.Sa3eed"),
      centerTitle: true,
      actions: const [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.primary,
          backgroundImage: AssetImage("assets/images/osama1.png"),
        )
      ],
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }

