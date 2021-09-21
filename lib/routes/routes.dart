import 'package:flutter/material.dart';

import '../core/error/exceptions.dart';
import '../feature/auth/login_screen.dart';
import '../feature/auth/signup_screen.dart';
import '../feature/bottom_tab/tab_screen.dart';
import '../feature/favorite/favorite_screen.dart';
import '../feature/home/cart_screen.dart';
import '../feature/home/checkout_screen.dart';
import '../feature/home/success_screen.dart';
import '../feature/onboarding/onborading_screen.dart';
import '../feature/order/order_screen.dart';
import '../feature/profile/profile_screen.dart';
import '../feature/search/search_screen.dart';
import '../feature/setting/setting_screen.dart';
import '../feature/splash/splash_screen.dart';
import '../feature/wallet/wallet_screen.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String onBoarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String profile = '/profile';
  static const String wallet = '/wallet';
  static const String order = '/order';
  static const String favorite = '/favorite';
  static const String setting = '/setting';
  static const String home = '/home';
  static const String search = '/search';
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String success = '/success';
  static const String tabScreen = '/tab';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case tabScreen:
        return MaterialPageRoute(builder: (_) => const TabScreen());
      case onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case wallet:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case order:
        return MaterialPageRoute(builder: (_) => const OrderScreen());
      case favorite:
        return MaterialPageRoute(builder: (_) => const FavoriteScreen());
      case setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());

      case search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case cart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case success:
        return MaterialPageRoute(builder: (_) => const SuccessScreen());
      case checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      default:
        throw RouteException('Route not found');
    }
  }
}
