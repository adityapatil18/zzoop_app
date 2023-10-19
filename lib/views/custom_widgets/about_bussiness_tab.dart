import 'package:flutter/material.dart';
import 'package:zzoop/views/custom_widgets/custom_hashtag.dart';

import 'custom_dot_text.dart';
import 'custom_services_text.dart';

class AboutBussiness extends StatelessWidget {
  const AboutBussiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Container(
          alignment: Alignment.center,
          height: 75,
          width: MediaQuery.sizeOf(context).width,
          color: Color(0xFFDCFFF3).withOpacity(1),
          child: Text(
            "Over 20 Years of Excellence in the Printing Industry, \nSpecializing in High-Quality 3D Prints",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Color(0xFF161D24)),
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
                    color: Color(0xFF161D24)),
              ),
              Text(
                'At Genesis Printing and Design, we take pride in being a full-service printing and graphic design company with over 20 years of expertise. Our commitment to delivering exceptional printing solutions sets us apart in the industry.',
                maxLines: 8,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF161D24)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Services',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161D24)),
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Commercial Printing',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Promotional Materials',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Marketing Collateral',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Large Format Printing',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Custom Stationery',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Graphic Design',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: 'Packaging Design and Printing',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomDotText(),
                  SizedBox(
                    width: 5,
                  ),
                  CustomServicesText(
                    text: '3D Printing',
                  ),
                ],
              ),
              CustomHashTagContainer(),
              CustomHashTagContainer(),
              CustomHashTagContainer()
            ],
          ),
        )
      ],
    ));
  }
}
