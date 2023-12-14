import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_bottom_button.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_container.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_counts_widgets.dart';
import 'package:zzoop/views/custom_widgets/custom_ratingbar_widegt.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';
import 'package:zzoop/views/custom_widgets/cutom_elevated_button_widget.dart';

class ReviewTab extends StatefulWidget {
  const ReviewTab({super.key});

  @override
  State<ReviewTab> createState() => _ReviewTabState();
}

class _ReviewTabState extends State<ReviewTab> {
  bool showReviewUI = false; // Variable to control content

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showReviewUI
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: 'Rate our Bussiness',
                        textColor: Color(0xFF161D24),
                        textSize: 14,
                        fontWeight: FontWeight.w700),
                    CustomRatingBar(
                      rating: 0,
                      itemSize: 31.91,
                      itemCount: 5,
                      iconColor: Color(0xFFE3E3E3),
                      unstarColor: null,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomText(
                        text: 'Title',
                        textColor: Color(0xFF161D24),
                        textSize: 14,
                        fontWeight: FontWeight.w500),
                    Container(
                      height: 40,
                      width: MediaQuery.sizeOf(context).width,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomText(
                        text: 'Review',
                        textColor: Color(0xFF161D24),
                        textSize: 14,
                        fontWeight: FontWeight.w500),
                    Container(
                      height: 118,
                      width: MediaQuery.sizeOf(context).width,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    CustomButton(
                        borderSide: null,
                        buttonSize: Size(MediaQuery.sizeOf(context).width, 62),
                        onPressed: () {},
                        text: 'Upload Images/Video',
                        buttonColor: Colors.grey,
                        borderRadius: 10,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontColor: Color(0xFF161D24)),
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
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
                            iconColor: Color(0xFFFFC107),
                            unstarColor: AppColors.unStarColor),
                        CustomRatingCount(
                            text: '220',
                            fontSize: 14,
                            color: Color(0xFF161D24)),
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
                                  iconColor: Color(0xFFFFC107),
                                  unstarColor: AppColors.unStarColor),
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
                            Divider(
                              thickness: 0.5,
                              color: AppColors.mainBlackColor,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
      bottomNavigationBar: CustomBottomButton(
        text: showReviewUI ? 'Submit review' : 'write review',
        onPressed: () {
          setState(() {
            showReviewUI = !showReviewUI;
          });
        },
      ),
    );
  }
}
