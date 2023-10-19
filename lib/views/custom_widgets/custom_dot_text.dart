import 'package:flutter/material.dart';

class CustomDotText extends StatelessWidget {
  const CustomDotText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '•',
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF161D24)),
    );
  }
}
