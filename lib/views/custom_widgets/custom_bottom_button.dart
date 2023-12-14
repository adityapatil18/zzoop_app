import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
          backgroundColor: MaterialStateProperty.all(
              AppColors.containerColor), // Set the desired color

          minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.sizeOf(context).width, 65)),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.white),
        ));
  }
}
