// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   const CustomButton({super.key, required this.onPressed, required this.text});
//   final VoidCallback onPressed;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: onPressed,
//         style: ButtonStyle(
//           elevation: MaterialStateProperty.all(0),
//           backgroundColor:
//               MaterialStateProperty.all(Colors.white), // Set the desired color

//           minimumSize: MaterialStateProperty.all(Size(183, 60)),
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(5),
//               side: BorderSide(color: Color(0xFF1B4F7F)))),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w600,
//               color: Color(0xFF1B4F7F)),
//         ));
//   }
// }

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.buttonColor, // Default button color
    this.buttonSize = const Size(183, 60), // Default button size
    required this.borderRadius, // Default border radius
    this.minimumSize = const Size(100, 40),
    this.borderSide = const BorderSide(),
    required this.fontSize,
    required this.fontWeight,
    required this.fontColor, // Default minimum size
  });

  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final Size buttonSize;
  final double borderRadius;
  final Size minimumSize;
  final BorderSide? borderSide;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        minimumSize: MaterialStateProperty.all(minimumSize),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(),
          ),
        ),
      ),
      child: Container(
        width: buttonSize.width,
        height: buttonSize.height,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: fontColor),
        ),
      ),
    );
  }
}
