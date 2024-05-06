import 'package:flutter/material.dart';

import '../infrastructure/styles.dart';

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    super.key,
    required this.name,
    required this.onPressed,
  });
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        child: Text(
          name,
          style: TextStyles.subtitleText(),
        ),
      ),
    );
  }
}
