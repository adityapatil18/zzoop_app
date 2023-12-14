import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';

class CustomCateogryContainer extends StatelessWidget {
  final String imageAsset;
  final String labelText;
  final double containerHeight;
  final double containerWidth;
  final double imageHeight;
  final double imageWidth;

  CustomCateogryContainer({
    required this.imageAsset,
    required this.labelText,
    this.containerHeight = 58,
    required this.containerWidth,
    this.imageHeight = 32,
    this.imageWidth = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      child: Column(
        children: [
          Image.asset(
            imageAsset,
            height: imageHeight,
            width: imageWidth,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
              text: labelText,
              textColor: AppColors.mainBlackColor,
              textSize: 10,
              fontWeight: FontWeight.w400)
        ],
      ),
    );
  }
}
