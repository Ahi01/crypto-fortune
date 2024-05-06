import 'package:flutter/material.dart';

import '../infrastructure/const.dart';
import '../infrastructure/styles.dart';
import 'my_elevated_button.dart';

class MyWarning extends StatelessWidget {
  const MyWarning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Warning',
          style: TextStyles.textName(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Crypto Fortune Fun Teller is an entertainment game, information in this game may differ from the real one.',
          style: TextStyles.subtitleText(),
        ),
        const SizedBox(height: 16),
        MyElevatedButton(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            buttonName: ('Continue'),
            onPressed: () {}),
        const SizedBox(height: 12),
        MyElevatedButton(
          backgroundColor: MaterialStateProperty.all(AppColors.bgColor),
          buttonName: 'Close',
          onPressed: () => Navigator.pop(context),
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
      ],
    );
  }
}


