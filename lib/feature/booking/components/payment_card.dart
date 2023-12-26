import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    this.image,
    this.cardNumber,
    this.expireDate,
    this.isCash = false,
    this.isSelected = false,
    required this.onTap,
  });
  final String? image;
  final String? cardNumber;
  final String? expireDate;
  final bool isCash;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 385.w,
        height: 100.h,
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 20.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected == true ? AppColors.primary : AppColors.lightGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            //! Image
            SizedBox(
                width: 70.w,
                child: isCash == true
                    ? Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Text(
                            '\$',
                            style: CustomTextStyle.poppins700secondry20,
                          ),
                        ),
                      )
                    : Image.asset(
                        image!,
                        fit: BoxFit.fitWidth,
                      )),
            SizedBox(width: 18.w),
            //! Card Details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! Card Number
                Text(
                  isCash == true
                      ? AppStrings.cashPayment
                      : cardNumber!,
                  style: CustomTextStyle.poppins600secondary16,
                ),
                //! Expire Date
                Text(
                  isCash == true
                      ? AppStrings.defaultMethod
                      : "${AppStrings.expires} ${expireDate!}",
                  style: CustomTextStyle.poppins500lightGrey14,
                ),
              ],
            ),
            //! Select Check
            const Spacer(),
            isSelected == true
                ? Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.check,
                      color: AppColors.white,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
