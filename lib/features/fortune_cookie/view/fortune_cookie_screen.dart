import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../components/my_custom_app_bar.dart';
import '../../../infrastructure/const.dart';


@RoutePage()
class FortuneCookie extends StatelessWidget {
  const FortuneCookie({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'Fortune Cookie'),
        Image.asset(Images.cookieClosePng)
      ],
    );
  }
}
