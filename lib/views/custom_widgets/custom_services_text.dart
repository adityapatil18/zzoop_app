import 'package:flutter/material.dart';

class CustomServicesText extends StatelessWidget {
  const CustomServicesText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF161D24)),
    );
  }
}
