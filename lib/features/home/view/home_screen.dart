import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../infrastructure/const.dart';
import '../../../../infrastructure/styles.dart';
import '../../crypto_fortune/view/crypto_fortune_screen.dart';
import '../../fortune_cookie/view/fortune_cookie_screen.dart';
import '../../my_wallet/view/my_wallet_screen.dart';
import '../../settings/view/settings_screen.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int i) {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: PageView(
            scrollBehavior: const ScrollBehavior(),
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: const [
              CryptoFortune(),
              MyWallet(),
              FortuneCookie(),
              Settings(),
            ]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 50),

          //********************************************
          //custom_navigation_bar
          child: CustomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            backgroundColor: Theme.of(context).colorScheme.primary,
            isFloating: true,
            elevation: 2,
            iconSize: 24,
            borderRadius: const Radius.circular(8),
            selectedColor: AppColors.buttonColorLightBlue,
            unSelectedColor: AppColors.iconColor,
            strokeColor: AppColors.buttonColorLightBlue,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(
                  Icons.menu,
                ),
                title: Text(
                  'Fortune',
                  style: TextStyles.textWhite28(fontSize: 12),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(
                  Icons.account_balance_wallet_outlined,
                ),
                title: Text(
                  'My Wallet',
                  style: TextStyles.textWhite28(fontSize: 12),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(
                  Icons.cookie_outlined,
                ),
                title: Text(
                  'Cookie',
                  style: TextStyles.textWhite28(fontSize: 12),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                ),
                title: Text(
                  'Settings',
                  style: TextStyles.textWhite28(fontSize: 12),
                ),
              ),
            ],
          ),
        ));
  }
}
