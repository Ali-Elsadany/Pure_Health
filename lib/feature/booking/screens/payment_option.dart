import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/common.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../booking_cubit/booking_cubit.dart';
import '../booking_cubit/booking_state.dart';
import '../components/payment_card.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            navigateReplacment(context: context, route: Routes.doctorProfile);
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          TextButton(
            onPressed: () {
              //* Add payment screen
            },
            child: Text(
              AppStrings.add,
              style: CustomTextStyle.poppins600White20,
            ),
          ),
          SizedBox(width: 20.w),
        ],
      ),
      body: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          final bookingCubit = BlocProvider.of<BookingCubit>(context);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! Title
                Text(
                  AppStrings.paymentMethods,
                  style: CustomTextStyle.poppins600secondary32,
                ),
                SizedBox(height: 21.h),
                //! Subtitle
                Text(
                  AppStrings.chooseDesiredVehicleType,
                  style: CustomTextStyle.poppins500secondary14,
                ),
                SizedBox(height: 44.h),
                //! Cards
                //* Card 1
                PaymentCard(
                  onTap: () {
                    bookingCubit.changeSelectedPayment(1);
                  },
                  isSelected: bookingCubit.isSelected1,
                  image: AppAssets.masterCard,
                  cardNumber: '**** **** **** 6790',
                  expireDate: "09/25",
                ),
                SizedBox(height: 19.h),
                PaymentCard(
                  onTap: () {
                    bookingCubit.changeSelectedPayment(2);
                  },
                  isSelected: bookingCubit.isSelected2,
                  image: AppAssets.visa,
                  cardNumber: '**** **** **** 4580',
                  expireDate: "10/27",
                ),
                SizedBox(height: 23.h),
                Text(
                  AppStrings.currentMethod,
                  style: CustomTextStyle.poppins500lightGrey16,
                ),
                SizedBox(height: 21.h),
                //* Cash Method
                PaymentCard(
                  onTap: () {
                    bookingCubit.changeSelectedPayment(3);
                  },
                  isSelected: bookingCubit.isSelected3,
                  isCash: true,
                ),
                SizedBox(
                  height: 96.h,
                ),
                //! Done Button
                Center(
                  child: CustomElevatedButton(
                    onPressed: () {
                      navigateReplacment(
                          context: context,
                          route: Routes.bookingCongratulations);
                    },
                    text: AppStrings.done,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
