import 'package:flutter/material.dart';
import 'package:zzoop/views/screens/about_bussiness_tab.dart';
import 'package:zzoop/views/custom_widgets/all_detail_container.dart';
import 'package:zzoop/views/screens/contact_info_tab.dart';
import 'package:zzoop/views/custom_widgets/custom_tab_bar_widget.dart';
import 'package:zzoop/views/screens/review_tab.dart';

import '../custom_widgets/custom_bottom_button.dart';

class SendEnquiryTabScreen extends StatelessWidget {
  const SendEnquiryTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Tab(
        text: "Contact Information",
      ),
      Tab(
        text: "About Business",
      ),
      Tab(
        text: "Reviews",
      )
    ];

    final tabviews = [
      contactInfoTab(),
      AboutBussinessTab(),
      ReviewTab(),
    ];
    return Scaffold(
      body: Column(
        children: [
          ALLDetailContainer(),
          Expanded(child: CustomTabBarWidget(tabs: tabs, tabviews: tabviews)),
        ],
      ),
    );
  }
}
