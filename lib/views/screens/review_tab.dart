import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zzoop/views/custom_widgets/custom_bottom_button.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_container.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_counts_widgets.dart';
import 'package:zzoop/views/custom_widgets/custom_ratingbar_widegt.dart';
import 'package:zzoop/views/screens/write_review.dart';

class Reviewtab extends StatelessWidget {
  const Reviewtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomRatingContainer(
                    width: 40.15,
                    height: 34.29,
                    borderRadius: 6.08,
                    text: '4.3',
                    fontSize: 19.44),
                CustomRatingBar(
                    rating: 4.3,
                    itemSize: 23.1,
                    itemCount: 5,
                    iconColor: Color(0xFFFFC107)),
                CustomRatingCount(
                    text: '220', fontSize: 14, color: Color(0xFF161D24)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      // horizontalTitleGap: 8,
                      leading: Image.asset(
                        'images/profilee.png',
                        height: 40,
                        width: 40,
                      ),
                      trailing: Text(
                        '1 Day Ago',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF161D24)),
                      ),
                      title: Text(
                        'Aditya Patil',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF161D24)),
                      ),
                      subtitle: CustomRatingBar(
                          rating: 4.3,
                          itemSize: 13.08,
                          itemCount: 5,
                          iconColor: Color(0xFFFFC107)),
                    ),
                    Text(
                      'Impressive Stationery Prints',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF161D24)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      maxLines: 5,
                      "Genesis Printing truly impressed me with their stationery prints. The letterheads, envelopes, and notepads they produced for my business were of exceptional quality and reflected my brand perfectly.",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF161D24)),
                    ),
                  ],
                );
              },
            ),
          ),
          CustomBottomButton(
            text: 'Write A Review',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
