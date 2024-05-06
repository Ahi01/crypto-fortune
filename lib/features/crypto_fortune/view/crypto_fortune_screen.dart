import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../components/my_custom_app_bar.dart';
import '../../../components/my_elevated_button.dart';
import '../../../components/my_warning.dart';
import '../../../infrastructure/const.dart';
import '../../../infrastructure/styles.dart';
import '../widgets/menu_crypto.dart';

@RoutePage()
class CryptoFortune extends StatelessWidget {
  const CryptoFortune({super.key});
  void openLocationSearchBox(BuildContext context) {
    showDialog(
      // useSafeArea: false,
      // useRootNavigator: false,
      // barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        icon: Image.asset(Images.attentionPng),
        title: const MyWarning(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Crypto Fortune',
            icon: Icons.help_outline,
            onTap: () => openLocationSearchBox(context),
          ),
          const SizedBox(height: 32),
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
          ),
          const SizedBox(height: 16),
          MyElevatedButton(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            buttonName: 'Choose a cryptocurrency',
            onPressed: () => _ShowModalBottomSheet(context),
          ),
          const SizedBox(height: 12),
          MyElevatedButton(
            backgroundColor: MaterialStateProperty.all(AppColors.bgColor),
            buttonName: 'Try to guess',
            onPressed: () {},
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                side: const BorderSide(
                  color: AppColors.buttonColorLightBlue,
                  width: 3,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'History of cryptocurrencies',
                style: TextStyles.textButton16(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(color: AppColors.greenColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 11.5),
          Container(
            height: 76,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.bottomBar,
            ),
            child: const Center(
              child: Text(
                "It looks like you haven't chosen any \ncryptocurrencies yet",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(),
          MyElevatedButton(
            backgroundColor: MaterialStateProperty.all(
              Colors.transparent.withOpacity(0.5),
            ),
            buttonName: 'Make a forecast!',
            onPressed: () {},
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void _ShowModalBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => const Padding(
      padding: EdgeInsets.only(top: 111),
      child: MenuCrypto(),
    ),
  );
}
