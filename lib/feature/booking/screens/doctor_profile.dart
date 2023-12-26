import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/common.dart';
import '../../../core/database/cache/cache_helper.dart';
import '../../../core/router/app_router.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../booking_cubit/booking_cubit.dart';
import '../booking_cubit/booking_state.dart';
import '../components/rate_container.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Column(
              children: [
                //! Doctor Image
                Image.asset('assets/images/osama1.png', height: 200.h),
                //! Doctor Data
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 120.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Column(
                        children: [
                          //* Years of Experience
                          Text(
                            "12 Years of experience",
                            style: CustomTextStyle.poppins600White20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 24.h),
                      margin: EdgeInsets.only(top: 56.h),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //* Name
                          Text(
                            'Dr: Osamaali',
                            style: CustomTextStyle.poppins600secondary24,
                          ),
                          //* Category
                          Text(
                            'Speech',
                            style: CustomTextStyle.poppins500primary20,
                          ),
                          SizedBox(height: 6.h),
                          //* Rate
                          const RateContainer(rate: 4.9),
                          SizedBox(height: 12.h),
                          //* Description
                          Text(
                            'Figma ipsum component variant main layer. Library figma reesizing invite mask arrow ipsum community. Prototype main ellipse opacity community auto flatten link. List device rectangle figjam subtract. Font pixel selection image rotate. Outline asset arrow library flatten blur. Style plugin union edit align.',
                            style: CustomTextStyle.poppins400secondary16,
                          ),
                          SizedBox(height: 15.h),
                          //* Book a date
                          Text(
                            AppStrings.bookaDate,
                            style: CustomTextStyle.poppins600secondary16,
                          ),
                          SizedBox(height: 16.h),
                          BlocBuilder<BookingCubit, BookingState>(
                            builder: (context, state) {
                              return EasyInfiniteDateTimeLine(
                                // controller: _controller,

                                locale: sl<CacheHelper>().getCachedLanguage(),
                                onDateChange: (selectedDate) {
                                  BlocProvider.of<BookingCubit>(context)
                                      .changeDate(selectedDate);
                                },
                                firstDate: DateTime.now(),
                                focusDate:
                                    BlocProvider.of<BookingCubit>(context)
                                        .focusDate,
                                timeLineProps: const EasyTimeLineProps(
                                  vPadding: 0,
                                  hPadding: 0,
                                  separatorPadding: 10,
                                ),
                                showTimelineHeader: false,
                                lastDate: DateTime(
                                    DateTime.now().year,
                                    DateTime.now().month,
                                    DateTime.now().day + 30),
                                dayProps: EasyDayProps(
                                  width: 82.w,
                                  height: 60.h,
                                  dayStructure: DayStructure.dayStrDayNumMonth,
                                  todayStyle: DayStyle(
                                    borderRadius: 8.r,
                                    dayNumStyle:
                                        CustomTextStyle.poppins400secondary13,
                                    dayStrStyle:
                                        CustomTextStyle.poppins400secondary13,
                                    monthStrStyle:
                                        CustomTextStyle.poppins400secondary13,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.circular(8.r),
                                      border:
                                          Border.all(color: AppColors.primary),
                                    ),
                                  ),
                                  activeDayStyle: DayStyle(
                                    dayNumStyle:
                                        CustomTextStyle.poppins400White13,
                                    dayStrStyle:
                                        CustomTextStyle.poppins400White13,
                                    monthStrStyle:
                                        CustomTextStyle.poppins400White13,
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                  ),
                                  inactiveDayStyle: DayStyle(
                                    borderRadius: 8.r,
                                    dayNumStyle:
                                        CustomTextStyle.poppins400secondary13,
                                    dayStrStyle:
                                        CustomTextStyle.poppins400secondary13,
                                    monthStrStyle:
                                        CustomTextStyle.poppins400secondary13,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 14.h),
                          //* Select time
                          Text(
                            AppStrings.selectaTime,
                            style: CustomTextStyle.poppins600secondary16,
                          ),
                          SizedBox(height: 5.h),
                          BlocBuilder<BookingCubit, BookingState>(
                            builder: (context, state) {
                              final bookingCubit =
                                  BlocProvider.of<BookingCubit>(context);
                              return SizedBox(
                                width: double.maxFinite,
                                height: 40.h,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 12.w);
                                  },
                                  itemCount: bookingCubit.dateList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        bookingCubit.changeTime(index);
                                      },
                                      child: Container(
                                        width: 82.h,
                                        height: 40.h,
                                        // margin: EdgeInsets.symmetric(
                                        //     horizontal: 6.w),
                                        decoration: BoxDecoration(
                                          color:
                                              bookingCubit.activeTime == index
                                                  ? AppColors.primary
                                                  : AppColors.lightGrey,
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          border: Border.all(
                                            color:
                                                bookingCubit.activeTime == index
                                                    ? AppColors.secondary
                                                    : AppColors.transparent,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            bookingCubit.dateList[index],
                                            style:
                                                bookingCubit.activeTime == index
                                                    ? CustomTextStyle
                                                        .poppins400White16
                                                    : CustomTextStyle
                                                        .poppins400secondary16,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 42.h),
                          //* Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //! Send Message Button
                              CustomElevatedButton(
                                onPressed: () {
                                  navigate(
                                      context: context,
                                      route: Routes.chatScreen);
                                },
                                text: AppStrings.sendMessage,
                                backgroundColor: AppColors.lightGrey,
                                textColor: AppColors.secondary,
                                borderColor: AppColors.secondary,
                              ),
                              SizedBox(width: 54.w),
                              //! Book Button
                              CustomElevatedButton(
                                onPressed: () {
                                  navigateReplacment(
                                      context: context,
                                      route: Routes.paymentOption);
                                },
                                text: AppStrings.bookNow,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
