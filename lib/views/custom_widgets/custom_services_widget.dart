import 'package:flutter/material.dart';

class CustomServicesText extends StatelessWidget {
  const CustomServicesText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // Your custom styling for the dot goes here
          width: 3,
          height: 3,
          decoration: BoxDecoration(
            color: Color(0xFF161D24), // Customize the dot color as needed
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          // Your custom styling for the text goes here
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF161D24),
          ),
        ),
      ],
    );
    ;
  }
}
