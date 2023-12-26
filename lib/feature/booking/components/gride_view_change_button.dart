import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class GridViewChangeButton extends StatelessWidget {
  const GridViewChangeButton(
      {super.key, required this.icon, required this.onTap, this.isGrid = true});
  final VoidCallback onTap;
  final IconData icon;
  final bool isGrid;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        size: 28,
        color: isGrid == true ? AppColors.lightPrimary : AppColors.secondary,
      ),
    );
  }
}
