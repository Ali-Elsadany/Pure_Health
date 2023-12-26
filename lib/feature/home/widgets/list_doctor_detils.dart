import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/common.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class ListDoctorDetils extends StatelessWidget {
  const ListDoctorDetils({
    super.key, required this.image, required this.doctorName, required this.doctorExperience, required this.doctorPrice,
  });
final String image;
final String doctorName;
final String doctorExperience;
final String doctorPrice;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigate(context: context, route: Routes.doctorProfile);
      },
      child: Container(
        width: 318.w,
        height: 280.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  //!image
                  Container(
                    width: 290.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Image.asset(AppAssets.saraSmall),
                  ),
                  //! favorite icon
                  Positioned(
                    right: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  //! star container
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8),
                      width: 70.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.markedStars,
                            size: 20,
                          ),
                          Text(
                            '4.8',
                            style: CustomTextStyle.poppins600White16,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              //!text column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //doctor name
                  Text(
                    'Dr: Sara Selim',
                    style: CustomTextStyle.poppins600White20,
                  ),
                  //doctor experience
                  Text(
                    '12 experience',
                    style: CustomTextStyle.poppins600White16
                        .copyWith(color: AppColors.lightGrey),
                  ),
                  //doctor price
                  Text("\$ 20.99",
                      style: CustomTextStyle.poppins700White16),
                  //Know more
                  Text("Know more...",
                        style: CustomTextStyle.poppins700White16
                            .copyWith(color: AppColors.lightGrey)),

                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
