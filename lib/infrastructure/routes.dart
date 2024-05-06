import 'package:crypto_fortune_fun_teller/features/home/view/home_screen.dart';
import 'package:crypto_fortune_fun_teller/infrastructure/onboarding/onboarding.dart';
import 'package:crypto_fortune_fun_teller/features/settings/view/settings_screen.dart';

import '../splash_screen.dart';

final routes = {
  '/': (context) => const SplashScreen(),
  '/onboarding': (context) => const Onboarding(),
  '/bottomBar': (context) => const HomeScreen(),
  '/settings': (context) => const Settings(),
};
