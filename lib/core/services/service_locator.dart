import 'package:get_it/get_it.dart';

import '../../feature/authentication/sign_in/forgot_password_cubit/forgot_password_cubit.dart';
import '../../feature/authentication/sign_in/sign_cubit/sign_in_cubit.dart';
import '../../feature/authentication/sign_up/cubit/sign_up_cubit.dart';
import '../../feature/booking/booking_cubit/booking_cubit.dart';
import '../../feature/home/cubit/home_cubit.dart';
import '../../feature/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import '../../feature/profile/presentation/cubits/profile_cubit/profile_cubit.dart';
import '../../feature/profile/presentation/cubits/settings_cubit/settings_cubit.dart';
import '../database/cache/cache_helper.dart';


final sl = GetIt.instance;

void initServiceLocator() {
  //!external
  sl.registerLazySingleton(() => CacheHelper());
  //!Cubits
  sl.registerLazySingleton(() => BookingCubit());
  sl.registerLazySingleton(() => HomeCubit());
  sl.registerLazySingleton(() => SignInCubit());
  sl.registerLazySingleton(() => SignUpCubit());
  sl.registerLazySingleton(() => ForgotPasswordCubit());
  sl.registerLazySingleton(() => EditProfileCubit());
  sl.registerLazySingleton(() => ProfileCubit());
  sl.registerLazySingleton(() => SettingsCubit());
}
