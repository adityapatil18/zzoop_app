import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';

class CustomRatingContainer extends StatelessWidget {
  const CustomRatingContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.borderRadius,
      required this.text,
      required this.fontSize});
  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColors.containerColor),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: AppColors.white),
      ),
    );
  }
}
