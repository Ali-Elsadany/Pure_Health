import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_text_styles.dart';

class CustomGNav extends StatelessWidget {
  const CustomGNav({
    super.key, required this.currentIndex, this.onTap, required this.tabs,
  });
  final int currentIndex;
  final Function(int)? onTap;
  final List<BottomNavigationBarItem> tabs;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: currentIndex,
            onTap: onTap,
            unselectedLabelStyle: CustomTextStyle.poppins400White16,
            selectedLabelStyle: CustomTextStyle.poppins400White16,
            iconSize: 25,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppColors.lightGrey,
            backgroundColor: AppColors.primary,
            unselectedIconTheme:
                const IconThemeData(color: AppColors.lightGrey),
            selectedItemColor: AppColors.white,

            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: AppStrings.home),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps_sharp),
                  label: AppStrings.category),
              BottomNavigationBarItem(
                  icon: Icon(Icons.watch_outlined),
                  label: AppStrings.book),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: AppStrings.profile),
            ]);
    
    
    
  //   GNav(
  //       selectedIndex: currentIndex ,
  //       activeColor: AppColors.white,
  //       color: AppColors.lightGrey,
        
  //       // gap: 8,
  //       padding: const EdgeInsets.all(16),
  //       tabBorderRadius: 16,
  //       onTabChange: onChanged,
  //       backgroundColor: AppColors.primary,
  //       // tabBackgroundColor: AppColors.black12,
  //       tabs: tabs);
  // }
}}