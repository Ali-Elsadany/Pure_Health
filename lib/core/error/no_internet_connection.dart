import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wifi_lock,
              color: AppColors.red,
            ),
            SizedBox(height: 10),
            Text(
              "No Internet Connection",
            ),
          ],
        ),
      ),
    );
  }
}
