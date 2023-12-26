import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/inkwell_icon_button.dart';
import '../widgets/app_bar_home.dart';
import '../widgets/custom_text_field_search.dart';
import '../widgets/list_doctor_detils.dart';
import '../widgets/slider_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //!message and notifications
              const AppBarHome(),
              SizedBox(
                height: 5.h,
              ),
              //!search text field
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 310.w,
                      child: CustomTextFormFieldSearch(
                        controller: TextEditingController(),
                        hint: AppStrings.search,
                      ),
                    ),
                    InkWellIconButton(
                      height: 56.h,
                      width: 55.w,
                      onTap: () {},
                      icon: const Icon(
                        Icons.equalizer_rounded,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              //!sliderr
              const SliderImage(),
              SizedBox(
                height: 10.h,
              ),
              //!Category
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      AppStrings.category,
                      style: CustomTextStyle.poppins600secondary24,
                    ),
                    const Spacer(),
                    //!see all
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
              //!list view category
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 60.h,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.w,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    controller: PageController(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 150.w,
                        height: 60.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                          'speech',
                          style: CustomTextStyle.poppins600White16,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //!Doctors
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      AppStrings.doctors,
                      style: CustomTextStyle.poppins600secondary24,
                    ),
                    const Spacer(),
                    //!see all
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

              //!List view doctor
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
                    return const ListDoctorDetils(
                      image: AppAssets.saraSmall,
                      doctorExperience: '12 experience',
                      doctorName: 'Dr: Sara Selim',
                      doctorPrice: "\$ 20.99",
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
