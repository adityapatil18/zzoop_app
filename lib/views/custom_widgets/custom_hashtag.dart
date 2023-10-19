import 'package:flutter/material.dart';

class CustomHashTagContainer extends StatelessWidget {
  const CustomHashTagContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 24,
      width: 103,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFD0FCEC),
      ),
      child: Text(
        '#LetterheadPrinting',
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Color(0xFF161D24)),
      ),
    );
  }
}
