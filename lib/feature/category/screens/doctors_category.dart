import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/common/common.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../booking/booking_cubit/booking_cubit.dart';
import '../../booking/booking_cubit/booking_state.dart';
import '../../booking/components/doctor_card.dart';
import '../../booking/components/gride_view_change_button.dart';
import '../../home/widgets/list_doctor_detils.dart';

class DoctorsCategory extends StatelessWidget {
  const DoctorsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
        icon: const Icon(Icons.arrow_back_ios_rounded),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search,size: 34,))
        ],
      ),
      body:  BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          final bookingCubit = BlocProvider.of<BookingCubit>(context);
      return
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity.w,
                height: 50.h,
                child:  Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(AppStrings.popularDoctor,style: CustomTextStyle.poppins600secondary24,),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            AppStrings.seeAll,
                            style: CustomTextStyle.poppins400secondary20,
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.secondary,
                            size: 33,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 280.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 10.w,
                          );
                        },
                        itemBuilder: ((context, index) {
                          return  const ListDoctorDetils(
                            image: AppAssets.saraSmall,
                            doctorName: 'Dr: Sara Selim',
                            doctorExperience: '12 experience',
                            doctorPrice: '\$ 20.99',
                          );
                        }),
                      ),
                    ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: double.infinity.w,
                height: 2.h,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    AppStrings.bookaDoctor,
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
        ),
      );
  },
  ),
    );
  }
}
