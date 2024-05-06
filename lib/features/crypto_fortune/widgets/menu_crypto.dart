import 'package:crypto_fortune_fun_teller/infrastructure/const.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/styles.dart';

class MenuCrypto extends StatefulWidget {
  const MenuCrypto({
    super.key,
  });

  @override
  State<MenuCrypto> createState() => _MenuCryptoState();
}

class _MenuCryptoState extends State<MenuCrypto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.bottomSheetColor,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 71,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Choose a cryptocurrency',
            style: TextStyles.textWhite28(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 33),
          Expanded(
            child: GridView.builder(
              itemCount: contents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onDoubleTap: () {},
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: AppColors.bottomBar,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(contents[index].title),
                      Text(contents[index].price),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingContent {
  OnboardingContent({
    required this.title,
    required this.price,
  });
  String title;
  String price;
}

List<OnboardingContent> contents = [
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
  OnboardingContent(
    price: '0,33212\$',
    title: 'Crack ',
  ),
];
