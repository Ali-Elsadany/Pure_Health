import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_health/feature/profile/presentation/cubits/profile_cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  //! Logout Chech Box
  bool logoutChechBox = false;
  changeLogoutChechBox() {
    logoutChechBox = !logoutChechBox;
    emit(LogoutChechBoxState());
  }
}
