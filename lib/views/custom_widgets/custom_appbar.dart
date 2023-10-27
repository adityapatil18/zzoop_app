import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0); // Preferred height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 94.07,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          'images/Logo.png',
          height: 17,
          width: 94.07,
        ),
      ),
      actions: [
        Image.asset(
          'images/profilee.png',
          height: 31,
          width: 31,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            size: 16,
            color: AppColors.containerColor,
          ),
        ),
      ],
    );
  }
}
