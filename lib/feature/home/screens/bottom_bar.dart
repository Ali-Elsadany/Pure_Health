import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_google_nav_bar.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';


class BotthomNavv extends StatelessWidget {
  const BotthomNavv({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Scaffold(
        body: BlocProvider.of<HomeCubit>(context)
            .screens[BlocProvider.of<HomeCubit>(context).currenIndex],
        bottomNavigationBar: CustomGNav(
            onTap: (value) {
              BlocProvider.of<HomeCubit>(context).changeIndex(value);
            },
            currentIndex: BlocProvider.of<HomeCubit>(context).currenIndex,
            tabs: const <BottomNavigationBarItem>[
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
            ]),
      );
    });
  }
}
