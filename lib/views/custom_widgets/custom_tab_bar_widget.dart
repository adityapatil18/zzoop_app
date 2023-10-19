import 'package:flutter/material.dart';

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
            tabs: tabs,

            isScrollable: true,
            indicatorWeight: 1,
            indicatorColor: Color(0xFF1B4F7F),
            labelColor: Color(0xFF1B4F7F),
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            // dividerColor: Color(0xFFF7F7F2),
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            unselectedLabelColor: Colors.black,
          ),
          Expanded(child: TabBarView(children: tabviews))
        ],
      ),
    );
  }
}
