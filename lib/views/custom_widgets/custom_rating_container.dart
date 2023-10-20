import 'package:flutter/material.dart';

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
          color: Color(0xFF1B4F7F)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: Colors.white),
      ),
    );
  }
}
