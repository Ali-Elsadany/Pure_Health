import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import 'custom_images.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ImageSlideshow(
        height: 150.h,
        indicatorColor: AppColors.primary,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: false,
        children: const [
          CustomImages(
            imgPath: AssetImage(AppAssets.imageSlider),
          ),
          CustomImages(
            imgPath: AssetImage(AppAssets.imageSlider),
          ),
          CustomImages(
            imgPath: AssetImage(AppAssets.imageSlider),
          ),
        ],
      ),
    );
  }
}

