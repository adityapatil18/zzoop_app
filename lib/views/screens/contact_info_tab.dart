import 'package:flutter/material.dart';
import 'package:zzoop/views/custom_widgets/cutom_elevated_button_widget.dart';

import '../../constants/colors.dart';
import '../custom_widgets/custom_bottom_button.dart';

class contactInfoTab extends StatelessWidget {
  const contactInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Main Office',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainBlackColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 81,
                        width: 183,
                        child: Text(
                          "Shop no. 34B, KP Town Center, Jazz Street, \nKoregaon Park, \nPune - 411 043",

                          maxLines:
                              5, // Adjust the maximum number of lines to control text overflow
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.mainBlackColor),
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Text(
                        'Landmark',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainBlackColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Near HDFC bank,KP',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainBlackColor),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 125,
                        width: 183,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/map.png'))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Get Direction',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.containerColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onPressed: () {},
                    text: 'Schedule Call',
                    buttonColor: AppColors.white,
                    borderRadius: 5,
                    borderSide: BorderSide(width: 1),
                    fontColor: AppColors.containerColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonSize: Size(140, 60),
                  ),
                  CustomButton(
                    onPressed: () {},
                    text: 'Visit Website',
                    borderRadius: 5,
                    buttonColor: Colors.white,
                    borderSide: BorderSide(width: 1),
                    fontColor: AppColors.containerColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    buttonSize: Size(140, 60),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomButton(
        text: 'Send Enquiry',
        onPressed: () {},
      ),
    );
  }
}
