import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class HaveAnAccountTextWidget extends StatelessWidget {
  const HaveAnAccountTextWidget({
    super.key,
    required this.textOne,
    required this.textTwo,
    this.onTap,
  });
  final String textOne;
  final String textTwo;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: textOne,
              style: CustomTextStyle.poppins600primary16,
            ),
            TextSpan(
              text: textTwo,
              style: CustomTextStyle.poppins600secondary16,
            ),
          ],
        ),
      ),
    );
  }
}
