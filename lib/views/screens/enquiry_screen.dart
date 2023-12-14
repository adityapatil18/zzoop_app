import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_bottom_button.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';
import 'package:zzoop/views/custom_widgets/textfeild_widet.dart';

class EnquiryScreen extends StatelessWidget {
  const EnquiryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(
            text: "Enquiry",
            textColor: AppColors.mainBlackColor,
            textSize: 20,
            fontWeight: FontWeight.w700),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'images/cancel.png',
              height: 21,
              width: 18,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: 'Name',
                  textColor: AppColors.mainBlackColor,
                  textSize: 14,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  controller: TextEditingController(), hintText: 'Enter Name'),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'Email ID',
                  textColor: AppColors.mainBlackColor,
                  textSize: 14,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  controller: TextEditingController(), hintText: 'Enter Email'),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'Day Preference',
                  textColor: AppColors.mainBlackColor,
                  textSize: 14,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  controller: TextEditingController(), hintText: 'Select Day'),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'Time Preference',
                  textColor: AppColors.mainBlackColor,
                  textSize: 14,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                  controller: TextEditingController(), hintText: 'Select Time'),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'Description (Optional)',
                  textColor: AppColors.mainBlackColor,
                  textSize: 14,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1)),
                  child: TextField(
                    decoration: InputDecoration(
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomButton(
        text: 'Submit Now',
        onPressed: () {},
      ),
    );
  }
}
