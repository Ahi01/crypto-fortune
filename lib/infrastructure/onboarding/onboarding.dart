import 'package:auto_route/auto_route.dart';
import 'package:crypto_fortune_fun_teller/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:crypto_fortune_fun_teller/infrastructure/const.dart';
import 'package:crypto_fortune_fun_teller/infrastructure/onboarding/onboarding_content.dart';
import 'package:crypto_fortune_fun_teller/infrastructure/styles.dart';

import '../../components/my_elevated_button.dart';
import '../../components/my_on_board_nav_bar.dart';

@RoutePage()
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  AnimatedContainer doIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 300),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.white : Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: contents.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 376,
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Image.asset(contents[i].image),
                        ),
                        const SizedBox(height: 64),
                        Text(
                          contents[i].title,
                          style: TextStyles.textWhite28(),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    currentPage == contents.length - 1
                        ? MyElevatedButton(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            buttonName: 'Continuo',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OnBoardNavBtn(
                                name: 'Skip',
                                onPressed: () {},
                              ),
                              Row(
                                children: List.generate(
                                  contents.length,
                                  (index) => doIndicator(index),
                                ),
                              ),
                              OnBoardNavBtn(
                                name: 'Next',
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                              )
                            ],
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<OnboardingContent> contents = [
  OnboardingContent(
    image: Images.onboarding1,
    title: 'Crack open a virtual financial fortune cookie',
  ),
  OnboardingContent(
    image: Images.onboarding2,
    title: 'Test Your Crypto Instincts, Reap the Rewards',
  ),
  OnboardingContent(
    image: Images.onboarding3,
    title: "We'd appreciate your thoughts in a review",
  ),
  OnboardingContent(
    image: Images.onboarding4,
    title: 'Crack open a virtual financial fortune cookie',
  ),
  OnboardingContent(
    image: Images.onboarding5,
    title: 'Crack open a virtual financial fortune cookie',
  ),
  // OnboardingContent(
  //   image: Images.onboarding6,
  //   title: 'Crack open a virtual financial fortune cookie',
  // ),
];
