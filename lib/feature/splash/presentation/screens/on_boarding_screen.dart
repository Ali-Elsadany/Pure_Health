import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/common/common.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../data/on_board_model.dart';
import '../functions/on_boarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    List<OnBoaringModel> onBoaringScreens = [
      OnBoaringModel(
        imagePath: AppAssets.onBoard1,
        title: AppStrings.onBordingTitle1,
        subTitle: AppStrings.onBoardingSubTitle1,
      ),
      OnBoaringModel(
        imagePath: AppAssets.onBoard2,
        title: AppStrings.onBordingTitle2,
        subTitle: AppStrings.onBoardingSubTitle2,
      ),
      OnBoaringModel(
        imagePath: AppAssets.onBoard3,
        title: AppStrings.onBordingTitle3,
        subTitle: AppStrings.onBoardingSubTitle3,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    itemCount: onBoaringScreens.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //!ar button
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    AppStrings.langCode,
                                    style: CustomTextStyle.poppins700White24,
                                  ),
                                ),
                                //!skip button
                                index != 2
                                    ? TextButton(
                                        onPressed: () {
                                          onBoardingVisited();
                                          navigateReplacment(
                                              context: context,
                                              route: Routes.signIn);
                                        },
                                        child: Text(
                                          AppStrings.skip,
                                          style:
                                              CustomTextStyle.poppins700White24,
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          SizedBox(height: 57.h),
                          //!image
                          Image.asset(
                              width: 290.w,
                              height: 290.h,
                              onBoaringScreens[index].imagePath),
                          const Spacer(),
                          //!container
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 380.h,
                            width: 430.w,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)),
                                color: AppColors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 19.h,
                                ),
                                Text(
                                  onBoaringScreens[index].title,
                                  style: CustomTextStyle.poppins600secondary24,
                                ),
                                SizedBox(
                                  height: 29.h,
                                ),
                                Text(onBoaringScreens[index].subTitle,
                                    style:
                                        CustomTextStyle.poppins500secondary20),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SmoothPageIndicator(
                                      controller: controller,
                                      count: 3,
                                      effect: ExpandingDotsEffect(
                                          dotColor: AppColors.lightGrey,
                                          activeDotColor: AppColors.primary,
                                          dotHeight: 10.h,
                                          dotWidth: 15.w,
                                          spacing: 10),
                                    ),
                                    index != 2
                                    //!next button
                                        ? TextButton(
                                            onPressed: () {
                                              controller.nextPage(
                                                  duration: const Duration(
                                                      microseconds: 200),
                                                  curve: Curves.bounceIn);
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  AppStrings.next,
                                                  style: CustomTextStyle
                                                      .poppins500secondary24,
                                                ),
                                                const Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 33,
                                                ),
                                              ],
                                            ),
                                          )
                                        //!Start
                                        : TextButton(
                                            onPressed: () {
                                              onBoardingVisited();
                                              navigateReplacment(
                                                  context: context,
                                                  route: Routes.signIn);
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  AppStrings.start,
                                                  style: CustomTextStyle
                                                      .poppins500secondary24,
                                                ),
                                                const Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 33,
                                                ),
                                              ],
                                            ),
                                          )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
