import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_colors.dart';
import '../presentation/cubits/settings_cubit/settings_cubit.dart';
import '../presentation/cubits/settings_cubit/settings_state.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    super.key,
    this.index,
  });
  final int? index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            BlocProvider.of<SettingsCubit>(context).changeRating(index);
          },
          child: Icon(
            Icons.star,
            size: 60,
            color: BlocProvider.of<SettingsCubit>(context).rating >= index!
                ? AppColors.rateApp
                : AppColors.lightGrey,
          ),
        );
      },
    );
  }
}