import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';

class CustomServicesList extends StatelessWidget {
  const CustomServicesList(
      {super.key,
      required this.text,
      required this.imagePath,
      required this.onPressed});
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            imagePath,
            height: 16,
            width: 16,
            color: AppColors.mainBlackColor,
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: AppColors.mainBlackColor,
              )),
          title: CustomText(
              text: text,
              textColor: AppColors.mainBlackColor,
              textSize: 16,
              fontWeight: FontWeight.w400),
          onTap: onPressed,
        ),
        Divider(
          thickness: 1,
          color: AppColors.mainBlackColor,
        )
      ],
    );
  }
}
