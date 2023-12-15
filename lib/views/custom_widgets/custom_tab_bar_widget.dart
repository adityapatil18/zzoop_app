import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';

class CustomTabBarWidget extends StatelessWidget {
  const CustomTabBarWidget(
      {super.key, required this.tabs, required this.tabviews});
  final List<Tab> tabs;
  final List<Widget> tabviews;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          TabBar(
            tabAlignment: TabAlignment.start,
            tabs: tabs,

            isScrollable: true,
            indicatorWeight: 1,
            indicatorColor: AppColors.containerColor,
            labelColor: AppColors.containerColor,
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            // dividerColor: Color(0xFFF7F7F2),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            unselectedLabelColor: AppColors.mainBlackColor,
          ),
          Expanded(child: TabBarView(children: tabviews))
        ],
      ),
    );
  }
}
