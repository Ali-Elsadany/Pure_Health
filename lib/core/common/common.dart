import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import '../database/cache/cache_helper.dart';
import '../router/app_router.dart';
import '../services/service_locator.dart';
import '../utils/app_colors.dart';

void navigate({
  required BuildContext context,
  required String route,
  dynamic arg,
}) {
  Navigator.pushNamed(
    context,
    route,
    arguments: arg,
  );
}

void navigateReplacment({
  required BuildContext context,
  required String route,
  dynamic arg,
}) {
  Navigator.pushReplacementNamed(
    context,
    route,
    arguments: arg,
  );
}

void navigateAfterThreeSeconds(context) async {
  bool isOnBoardingVisited =
      await sl<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
  Future.delayed(const Duration(seconds: 3)).then((value) async {
    if (isOnBoardingVisited == true) {
      navigateReplacment(context: context, route: Routes.signIn);
    } else {
      navigateReplacment(context: context, route: Routes.onBoarding);
    }
  });
}

void showTwist({required String messege, required ToastStates state}) {
  Fluttertoast.showToast(
      msg: messege,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: getState(state),
      textColor: Colors.white,
      fontSize: 16.0);
}

enum ToastStates {
  error,
  success,
  warning,
}

Color getState(ToastStates state) {
  switch (state) {
    case ToastStates.error:
      return AppColors.red;
    case ToastStates.success:
      return AppColors.green;
    case ToastStates.warning:
      return AppColors.primary;
  }
}

Future<XFile?> pickImage(ImageSource source) async {
  XFile? image = await ImagePicker().pickImage(source: source);
  if (image != null) {
    return image;
  } else {
    return null;
  }
}

Future uploadImageToAPI(XFile image) async {
  return MultipartFile.fromFile(image.path,
      filename: image.path.split('/').last);
}
