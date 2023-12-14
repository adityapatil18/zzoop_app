import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String logoImagePath;
  final String profileImagePath;
  final VoidCallback onProfileTap;
  final VoidCallback onNotificationTap;

  const CustomAppBar({
    Key? key,
    required this.logoImagePath,
    required this.profileImagePath,
    required this.onProfileTap,
    required this.onNotificationTap,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0); // Preferred height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 94.07,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          logoImagePath,
          height: 17,
          width: 94.07,
        ),
      ),
      actions: [
        GestureDetector(
          child: Image.asset(
            profileImagePath,
            height: 31,
            width: 31,
          ),
          onTap: onProfileTap,
        ),
        IconButton(
          onPressed: onNotificationTap,
          icon: Icon(
            Icons.notifications,
            size: 20,
            color: AppColors.containerColor,
          ),
        ),
      ],
    );
  }
}
