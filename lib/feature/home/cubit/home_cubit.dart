import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../booking/screens/book_screen.dart';
import '../../category/screens/category_screen.dart';
import '../../profile/presentation/screens/profile_screen.dart';
import '../screens/home.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<Widget> screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const BookScreen(),
    const ProfileScreen()
  ];
  int currenIndex = 0;
  void changeIndex(index) {
    currenIndex = index;
    emit(CurrenIndexState());
  }
}
