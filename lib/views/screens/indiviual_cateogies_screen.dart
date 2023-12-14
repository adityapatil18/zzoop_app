import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_appbar.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_container.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_counts_widgets.dart';
import 'package:zzoop/views/custom_widgets/custom_ratingbar_widegt.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';
import 'package:zzoop/views/custom_widgets/cutom_elevated_button_widget.dart';

class IndiviualServicesScreen extends StatelessWidget {
  const IndiviualServicesScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(
        logoImagePath: "images/Logo.png",
        profileImagePath: "images/profilee.png",
        onProfileTap: () {},
        onNotificationTap: () {},
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: MediaQuery.sizeOf(context).width,
            color: AppColors.mainBlackColor,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainBlackColor,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 102,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5)),
                child: CustomText(
                    text: 'Highest Rating',
                    textColor: AppColors.mainBlackColor,
                    textSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                alignment: Alignment.center,
                width: 102,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5)),
                child: CustomText(
                    text: 'Zzoop Verified',
                    textColor: AppColors.mainBlackColor,
                    textSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Image.asset(
                'images/filters.png',
                height: 15,
                width: 15,
              ),
              CustomText(
                  text: 'All Filters',
                  textColor: AppColors.mainBlackColor,
                  textSize: 14,
                  fontWeight: FontWeight.w600)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 87,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.kmColor),
              child: Text(
                'Within 500m',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColors.mainBlackColor),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 215,
                      color: AppColors.white,
                      width: MediaQuery.sizeOf(context).width,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset('images/plumbing.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: 115,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomText(
                                            text: 'Super Fast Services',
                                            textColor: AppColors.mainBlackColor,
                                            textSize: 16,
                                            fontWeight: FontWeight.w900),
                                        Text(
                                          maxLines: 4,
                                          'Specialized in large size printing up-to A0, \nDigital Printing, color xerox',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.mainBlackColor),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 21,
                                          width: 108,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color(0xFFF2EEEE)
                                                  .withOpacity(1)),
                                          child: CustomText(
                                              text: text,
                                              textColor:
                                                  AppColors.mainBlackColor,
                                              textSize: 10,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        CustomText(
                                            text:
                                                'Business Hours - 9:am to 10:00pm',
                                            textColor: AppColors.mainBlackColor,
                                            textSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomRatingContainer(
                                        width: 24.3,
                                        height: 20.38,
                                        borderRadius: 3.65,
                                        text: '4.3',
                                        fontSize: 11.38),
                                    CustomRatingBar(
                                        rating: 4.3,
                                        itemSize: 13.87,
                                        itemCount: 5,
                                        iconColor: AppColors.starColor,
                                        unstarColor: AppColors.unStarColor),
                                    CustomRatingCount(
                                        text: '220 ratings',
                                        fontSize: 10,
                                        color: Color(0xFF161D24))
                                  ],
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                      onPressed: () {},
                                      text: 'CALL NOW',
                                      buttonColor: Color(0xFF1B4F7F),
                                      borderRadius: 10,
                                      buttonSize: Size(100, 40),
                                      fontColor: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Visit Website',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF1B4F7F)),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
