import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

import '../../../core/common/common.dart';
import '../../../core/database/cache/cache_helper.dart';
import '../../../core/router/app_router.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../booking_cubit/booking_cubit.dart';
import '../booking_cubit/booking_state.dart';
import '../components/doctor_card.dart';
import '../components/gride_view_change_button.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: Text(
          AppStrings.selectDateAndTime,
          style: CustomTextStyle.openSans700white26,
        ),
        centerTitle: true,
        leading: Container(),
      ),
      body: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          final bookingCubit = BlocProvider.of<BookingCubit>(context);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                //! Today Date
                Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                  style: CustomTextStyle.openSans700secondry26,
                ),
                SizedBox(height: 25.h),
                //! Today Text
                Text(
                  AppStrings.today,
                  style: CustomTextStyle.openSans700secondry26,
                ),
                SizedBox(height: 24.h),
                //! Date Picker
                EasyDateTimeLine(
                  initialDate: DateTime.now(),
                  onDateChange: (selectedDate) {
                    //`selectedDate` the new date selected.
                  },
                  headerProps: const EasyHeaderProps(
                    monthPickerType: MonthPickerType.switcher,
                    selectedDateFormat: SelectedDateFormat.fullDateDMY,
                  ),
                  dayProps: const EasyDayProps(
                    dayStructure: DayStructure.dayStrDayNum,
                    activeDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff336EA6),
                            Color(0xff336EA6),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                //! Divider
                Divider(
                  thickness: 1.h,
                  color: AppColors.primary,
                ),
                SizedBox(height: 16.h),
                //! Fillter Row
                Row(
                  children: [
                    Text(
                      AppStrings.availableDoctor,
                      style: CustomTextStyle.poppins600secondary20,
                    ),
                    const Spacer(),
                    Container(
                      width: 95.w,
                      height: 41.h,
                      decoration: BoxDecoration(
                        color: AppColors.darkWhite,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GridViewChangeButton(
                            onTap: () {
                              bookingCubit.gridViewChange(true);
                            },
                            icon: Icons.grid_view,
                            isGrid: bookingCubit.isGrid,
                          ),
                          SizedBox(width: 11.w),
                          GridViewChangeButton(
                            onTap: () {
                              bookingCubit.gridViewChange(false);
                            },
                            icon: Icons.menu,
                            isGrid: !bookingCubit.isGrid,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                //! Grid Body
                Expanded(
                  child: MasonryGridView.count(
                    crossAxisCount: bookingCubit.crossAxisNum,
                    itemCount: 3,
                    crossAxisSpacing: 18.w,
                    mainAxisSpacing: 11.h,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          navigate(
                              context: context, route: Routes.doctorProfile);
                        },
                        child: DoctorCard(
                          isGrid: bookingCubit.isGrid,
                          doctorImage: 'assets/images/osama1.png',
                          doctorName: 'Dr: Osama ali',
                          doctorCatogory: 'Speech',
                          rate: 4.9,
                        ),
                      );
                    },
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
