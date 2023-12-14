import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.textColor,
      required this.textSize,
      required this.fontWeight,
      this.isItalic = false});
  final String text;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;
  final bool? isItalic;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: textSize,
          color: textColor,
          fontWeight: fontWeight,
          fontStyle: isItalic!
              ? FontStyle.italic
              : FontStyle.normal, // Apply italic style conditionally
        ));
  }
}
