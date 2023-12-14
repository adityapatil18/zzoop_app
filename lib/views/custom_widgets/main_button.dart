import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'custom_text.dart';

class MainElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const MainElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: AppColors.containerColor, // replace with your color
      ),
      child: CustomText(
        text: buttonText,
        textColor: Colors.white,
        textSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
