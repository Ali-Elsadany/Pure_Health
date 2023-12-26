import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pure_health/feature/booking/components/rate_container.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.isGrid,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorCatogory,
    required this.rate,
  });
  final bool isGrid;
  final String doctorImage;
  final String doctorName;
  final String doctorCatogory;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: isGrid == true ? 200.h : 150.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: isGrid == true
          //! if Grid
          ? Padding(
              padding: EdgeInsets.all(10.h),
              child: Column(                
                children: [
                  SizedBox(
                    height: 80.h,
                    child: Image.asset(
                      doctorImage,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Text(
                    doctorName,
                    style: CustomTextStyle.poppins600White20,
                  ),
                  Text(
                    doctorCatogory,
                    style: CustomTextStyle.poppins500lightGrey20,
                  ),
                  SizedBox(height: 2.h),
                  RateContainer(
                    rate: rate,
                    borderColor: AppColors.white,
                  ),
                ],
              ),
            )
          //! If List
          : Padding(
              padding: EdgeInsets.fromLTRB(27.w, 10.h, 11.w, 0),
              child: Row(
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          doctorName,
                          style: CustomTextStyle.poppins600White20,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          doctorCatogory,
                          style: CustomTextStyle.poppins500lightGrey20,
                        ),
                        SizedBox(height: 8.h),
                        RateContainer(
                          rate: rate,
                          borderColor: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    doctorImage,
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
            ),
    );
  }
}
