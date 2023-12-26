import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../widgets/notification_container.dart';

class NoteficationScreen extends StatelessWidget {
  const NoteficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! AppBar
      appBar: AppBar(
        title: Text(
          AppStrings.notification,
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
      ),
      //! Body
      body: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Center(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.h);
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return const NotificationContainer(
                image: "assets/images/osama1.png",
                text:
                    'The payment mission has been done for booking an appointment',
                time: '12:25 AM',
              );
            },
          ),
        ),
      ),
    );
  }
}


