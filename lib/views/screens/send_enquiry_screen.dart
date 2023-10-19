import 'package:flutter/material.dart';
import 'package:zzoop/views/custom_widgets/about_bussiness_tab.dart';
import 'package:zzoop/views/custom_widgets/custom_container.dart';
import 'package:zzoop/views/screens/contact_info_tab.dart';
import 'package:zzoop/views/custom_widgets/custom_tab_bar_widget.dart';
import 'package:zzoop/views/custom_widgets/review_tab.dart';

import '../custom_widgets/custom_bottom_button.dart';

class SendEnquiryScreen extends StatelessWidget {
  const SendEnquiryScreen({super.key});

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
      contactInfo(),
      AboutBussiness(),
      Reviewtab(),
    ];
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(),
          Expanded(child: CustomTabBarWidget(tabs: tabs, tabviews: tabviews)),
          CustomBottomButton(
            onPressed: () {
            
            },
            text: 'Send Enquiry',
          )
        ],
      ),
    );
  }
}
