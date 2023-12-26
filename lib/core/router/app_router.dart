import 'package:flutter/material.dart';

import '../../feature/authentication/sign_in/screens/sign_in_screen.dart';
import '../../feature/authentication/sign_up/screens/sign_up_screen.dart';
import '../../feature/booking/screens/book_screen.dart';
import '../../feature/booking/screens/booking_congratulations_screen.dart';
import '../../feature/booking/screens/doctor_profile.dart';
import '../../feature/booking/screens/payment_option.dart';
import '../../feature/category/screens/category_screen.dart';
import '../../feature/category/screens/doctors_category.dart';
import '../../feature/chat/screens/chat_screen.dart';
import '../../feature/chat/screens/chats_screen.dart';
import '../../feature/home/screens/bottom_bar.dart';
import '../../feature/home/screens/home.dart';
import '../../feature/home/screens/notefication_screen.dart';
import '../../feature/profile/presentation/screens/history_screen.dart';
import '../../feature/profile/presentation/screens/privacy_screen.dart';
import '../../feature/profile/presentation/screens/profile_details.dart';
import '../../feature/profile/presentation/screens/profile_edit.dart';
import '../../feature/profile/presentation/screens/profile_screen.dart';
import '../../feature/profile/presentation/screens/setting_screen.dart';
import '../../feature/splash/presentation/screens/on_boarding_screen.dart';
import '../../feature/splash/presentation/screens/splash.dart';


class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBoarding';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String doctorProfile = '/doctorProfile';
  static const String home = '/HomeScreen';
  static const String category = '/category';
  static const String paymentOption = '/paymentOption';
  static const String bookingCongratulations = '/bookingCongratulations';
  static const String bookScreen = '/bookScreen';
  static const String botthomNavv = '/botthomNavv';
  static const String doctorsCategory = '/doctorsCategory';
  static const String profileDetails = '/profileDetails';
  static const String profileEdit = '/profileEdit';
  static const String profileScreen = '/profileScreen';
  static const String settingScreen = '/SettingScreen';
  static const String noteficationScreen = '/noteficationScreen';
  static const String historyScreen = '/HistoryScreen';
  static const String chatScreen = '/chatScreen';
  static const String chatsScreen = '/chatsScreen';
  static const String privacyScreen = '/PrivacyScreen';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.privacyScreen:
        return MaterialPageRoute(builder: (_) => const PrivacyScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.botthomNavv:
        return MaterialPageRoute(builder: (_) => const BotthomNavv());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.doctorProfile:
        return MaterialPageRoute(builder: (_) => const DoctorProfile());
      case Routes.category:
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      case Routes.paymentOption:
        return MaterialPageRoute(builder: (_) => const PaymentOption());
      case Routes.settingScreen:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.bookingCongratulations:
        return MaterialPageRoute(
            builder: (_) => const BookingCongratulations());
      case Routes.bookScreen:
        return MaterialPageRoute(builder: (_) => const BookScreen());
      case Routes.doctorsCategory:
        return MaterialPageRoute(builder: (_) => const DoctorsCategory());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.profileDetails:
        return MaterialPageRoute(builder: (_) => const ProfileDetails());
      case Routes.profileEdit:
        return MaterialPageRoute(builder: (_) => const ProfileEdit());
              
      case Routes.noteficationScreen:
              return MaterialPageRoute(builder: (_) => const NoteficationScreen());
      case Routes.historyScreen:
        return MaterialPageRoute(builder: (_) => const HistoryScreen());
      case Routes.chatScreen:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case Routes.chatsScreen:
        return MaterialPageRoute(builder: (_) => const ChatsScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No Found Route'),
            ),
          ),
        );
    }
  }
}
