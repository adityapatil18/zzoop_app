import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_appbar.dart';
import 'package:zzoop/views/custom_widgets/cateogry_container.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';
import 'package:zzoop/views/screens/cateogires_screen.dart';
import 'package:zzoop/views/screens/send_enquiry_screen.dart';

import '../custom_widgets/custom_rating_container.dart';
import '../custom_widgets/custom_rating_counts_widgets.dart';
import '../custom_widgets/custom_ratingbar_widegt.dart';
import '../custom_widgets/cutom_elevated_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.my_location_sharp,
                    color: AppColors.containerColor,
                    size: 13.33,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                      text: 'Location',
                      textColor: AppColors.mainBlackColor,
                      textSize: 12,
                      fontWeight: FontWeight.w400)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColors.mainBlackColor,
                          size: 16,
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: TextField(
                            cursorHeight: 10,
                            controller: SearchController(),
                            decoration: InputDecoration(
                              hintText: 'Grocery shop near me',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.mainBlackColor),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Image.asset(
                          'images/scan.png',
                          height: 16,
                          width: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'images/mike.png',
                          height: 16,
                          width: 16,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomText(
                      text: 'Essential Category',
                      textColor: AppColors.mainBlackColor,
                      textSize: 14,
                      fontWeight: FontWeight.w400)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/acc.png',
                      labelText: 'Accomendation',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/fitness.png',
                      labelText: 'Fitness',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/food.png',
                      labelText: 'Foods & Drinks',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/homes.png',
                      labelText: 'Home & Services',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/health.png',
                      labelText: 'Healthcare',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/education.png',
                      labelText: 'Education',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/travel.png',
                      labelText: 'Travel & Tourism',
                      containerHeight: 58,
                      containerWidth: 87,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                  },
                  child: CustomCateogryContainer(
                      imageAsset: 'images/gov.png',
                      labelText: 'Local Govt Offices',
                      containerHeight: 58,
                      containerWidth: 92,
                      imageHeight: 32,
                      imageWidth: 32),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 140,
              width: MediaQuery.sizeOf(context).width,
              color: AppColors.darkBlueColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: 'List your Business Now',
                            textColor: AppColors.white,
                            textSize: 19.85,
                            fontWeight: FontWeight.w400),
                        CustomText(
                            text: 'FREE for 6 Months',
                            textColor: AppColors.white,
                            textSize: 15.27,
                            fontWeight: FontWeight.w700),
                        // Container(
                        //   width: 120,
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //       color: Color(0xFF07D58C),
                        //       borderRadius: BorderRadius.circular(4.74)),
                        //       child: Row(),
                        // )
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.74))),
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColors.greenColor),
                                minimumSize:
                                    MaterialStateProperty.all(Size(120, 30))),
                            onPressed: () {},
                            child: Row(
                              children: [
                                CustomText(
                                    text: 'JOIN NOW',
                                    textColor: AppColors.white,
                                    textSize: 8.54,
                                    fontWeight: FontWeight.w600),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: AppColors.white,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 7,
                                    color: AppColors.greenColor,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/personn.png',
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width - 260,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: 'Mostly Searched Businesses',
                      textColor: AppColors.mainBlackColor,
                      textSize: 14,
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 105.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SendEnquiryTabScreen(),
                          ));
                    },
                    child: Container(
                      width: 156.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                      ),

                      margin:
                          EdgeInsets.all(3.0), // Add margin between containers
                      // You can set your desired color here
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/pack.png',
                            fit: BoxFit.contain,
                          ),
                          const Center(
                            child: CustomText(
                                text: 'Pest Control services',
                                fontWeight: FontWeight.w700,
                                textColor: AppColors.white,
                                textSize: 12),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 140,
              width: MediaQuery.sizeOf(context).width,
              color: AppColors.darkBlueColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: 'List your Business Now',
                            textColor: AppColors.white,
                            textSize: 19.85,
                            fontWeight: FontWeight.w400),
                        CustomText(
                            text: 'FREE for 6 Months',
                            textColor: AppColors.white,
                            textSize: 15.27,
                            fontWeight: FontWeight.w700),
                        // Container(
                        //   width: 120,
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //       color: Color(0xFF07D58C),
                        //       borderRadius: BorderRadius.circular(4.74)),
                        //       child: Row(),
                        // )
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.74))),
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColors.greenColor),
                                minimumSize:
                                    MaterialStateProperty.all(Size(120, 30))),
                            onPressed: () {},
                            child: Row(
                              children: [
                                CustomText(
                                    text: 'JOIN NOW',
                                    textColor: AppColors.white,
                                    textSize: 8.54,
                                    fontWeight: FontWeight.w600),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: AppColors.white,
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 7,
                                    color: AppColors.greenColor,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/personn.png',
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width - 260,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
                text: 'Recommended Businesses',
                textColor: AppColors.mainBlackColor,
                textSize: 14,
                fontWeight: FontWeight.w400),
            SizedBox(
              height: 20,
            ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFFF2EEEE).withOpacity(1)),
                                  child: CustomText(
                                      text: 'Plumbing Services',
                                      textColor: AppColors.mainBlackColor,
                                      textSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                    text: 'Business Hours - 9:am to 10:00pm',
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFFF2EEEE).withOpacity(1)),
                                  child: CustomText(
                                      text: 'Plumbing Services',
                                      textColor: AppColors.mainBlackColor,
                                      textSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                    text: 'Business Hours - 9:am to 10:00pm',
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFFF2EEEE).withOpacity(1)),
                                  child: CustomText(
                                      text: 'Plumbing Services',
                                      textColor: AppColors.mainBlackColor,
                                      textSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                    text: 'Business Hours - 9:am to 10:00pm',
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
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
