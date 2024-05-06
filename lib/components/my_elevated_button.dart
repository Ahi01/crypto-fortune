// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../infrastructure/const.dart';
import '../infrastructure/styles.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.backgroundColor,
    this.shape,
    this.alignmentGeometry,
  });

  final String buttonName;
  final VoidCallback onPressed;
  final MaterialStateProperty<Color>? backgroundColor;
  final MaterialStateProperty<OutlinedBorder>? shape;
  final AlignmentGeometry? alignmentGeometry;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.buttonColorLightBlue,
              AppColors.buttonColorDarkBlue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(32)),
      child: ElevatedButton(
        style: ButtonStyle(
          alignment: alignmentGeometry,
          elevation: MaterialStateProperty.all(0),
          backgroundColor: backgroundColor,
          shape: shape,
          fixedSize: MaterialStateProperty.all(
            const Size(
              double.maxFinite,
              48,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: TextStyles.textButton16(),
        ),
      ),
    );
  }
}
