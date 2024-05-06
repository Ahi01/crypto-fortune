// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../infrastructure/const.dart';
import '../infrastructure/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
  });
  final String title;
  final IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: TextStyles.textWhite28(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          onPressed: onTap,
          icon: Icon(icon),
        ),
      ],
    );
  }
}
