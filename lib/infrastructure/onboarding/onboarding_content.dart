import 'package:crypto_fortune_fun_teller/infrastructure/const.dart';

class OnboardingContent {
  OnboardingContent({
    required this.image,
    required this.title,
    this.description,
  });
  String image;
  String title;
  String? description;
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
