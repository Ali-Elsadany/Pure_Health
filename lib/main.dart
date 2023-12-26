import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/app.dart';
import 'core/database/cache/cache_helper.dart';
import 'core/services/service_locator.dart';
import 'feature/authentication/sign_in/forgot_password_cubit/forgot_password_cubit.dart';
import 'feature/authentication/sign_in/sign_cubit/sign_in_cubit.dart';
import 'feature/authentication/sign_up/cubit/sign_up_cubit.dart';
import 'feature/booking/booking_cubit/booking_cubit.dart';
import 'feature/home/cubit/home_cubit.dart';
import 'feature/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'feature/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import 'feature/profile/presentation/cubits/settings_cubit/settings_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  await sl<CacheHelper>().init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<BookingCubit>()),
        BlocProvider(create: (context) => sl<SignInCubit>()),
        BlocProvider(create: (context) => sl<SignUpCubit>()),
        BlocProvider(create: (context) => sl<HomeCubit>()),
        BlocProvider(create: (context) => sl<ForgotPasswordCubit>()),
        BlocProvider(create: (context) => sl<EditProfileCubit>()),
        BlocProvider(create: (context) => sl<ProfileCubit>()),
        BlocProvider(create: (context) => sl<SettingsCubit>()),
      ],
      child: const MarkazElamal(),
    ),
  );
}