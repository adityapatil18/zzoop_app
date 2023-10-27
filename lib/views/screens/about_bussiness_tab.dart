import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_bottom_button.dart';

import '../custom_widgets/custom_services_widget.dart';

class AboutBussiness extends StatelessWidget {
  const AboutBussiness({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> hastagList = [
      "#LetterheadPrinting",
      "#EnvelopeDesign",
      "#BrandStationery",
      "#PosterPrinting",
      "#BannerDesign",
      "#WallGraphicsPrinting",
      "#VehicleWraps",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.center,
              height: 75,
              width: MediaQuery.sizeOf(context).width,
              color: AppColors.bgColor.withOpacity(1),
              child: Text(
                "Over 20 Years of Excellence in the Printing Industry, \nSpecializing in High-Quality 3D Prints",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: AppColors.mainBlackColor),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Business',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainBlackColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'At Genesis Printing and Design, we take pride in being a full-service printing and graphic design company with over 20 years of expertise. Our commitment to delivering exceptional printing solutions sets us apart in the industry.',
                    maxLines: 8,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainBlackColor),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Services',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainBlackColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CustomServicesText(text: 'Commercial Printing '),
                  CustomServicesText(text: 'Promotional Materials'),
                  CustomServicesText(text: 'Marketing Collateral'),
                  CustomServicesText(text: 'Large Format Printing'),
                  CustomServicesText(text: 'Custom Stationery'),
                  CustomServicesText(text: 'Graphic Design'),
                  CustomServicesText(text: 'Packaging Design and Printing'),
                  CustomServicesText(text: '3D Printing'),
                  SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: hastagList.map(
                      (type) {
                        return Container(
                          alignment: Alignment.center,
                          height: 24,
                          width: 103,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.hashColor),
                          child: Text(
                            type,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: AppColors.mainBlackColor),
                          ),
                        );
                      },
                    ).toList(),
                  ),
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
