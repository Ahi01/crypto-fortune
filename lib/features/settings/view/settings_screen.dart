import 'package:auto_route/auto_route.dart';
import 'package:crypto_fortune_fun_teller/components/my_custom_app_bar.dart';
import 'package:crypto_fortune_fun_teller/components/my_elevated_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CustomAppBar(title: 'Settings'),
          const SizedBox(height: 40),
          MyElevatedButton(
            alignmentGeometry: Alignment.centerLeft,
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            buttonName: 'Privacy Policy',
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          MyElevatedButton(
            alignmentGeometry: Alignment.centerLeft,
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            buttonName: 'Terms of Use',
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          MyElevatedButton(
            alignmentGeometry: Alignment.centerLeft,
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            buttonName: 'Support',
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          MyElevatedButton(
            alignmentGeometry: Alignment.centerLeft,
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            buttonName: 'Share',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
