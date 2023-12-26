import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  const CustomImages({
    super.key,
    required this.imgPath,
    this.height,
    this.width,
    this.fit,
  });
  final ImageProvider<Object> imgPath;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300.w,
      // height: 50.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
          
          image: imgPath,
          fit: BoxFit.fitWidth,
        
        ),
      ),
    );
  }
}
