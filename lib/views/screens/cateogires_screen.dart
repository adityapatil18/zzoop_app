import 'package:flutter/material.dart';
import 'package:zzoop/views/custom_widgets/custom_appbar.dart';
import 'package:zzoop/views/custom_widgets/custom_services_list_widget.dart';
import 'package:zzoop/views/custom_widgets/custom_text.dart';
import 'package:zzoop/views/screens/indiviual_cateogies_screen.dart';

import '../../constants/colors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 60,
              width: MediaQuery.sizeOf(context).width,
              color: AppColors.mainBlackColor,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_sharp, color: AppColors.white),
                  ),
                  CustomText(
                      text: 'Home Servieces',
                      textColor: AppColors.white,
                      textSize: 14,
                      fontWeight: FontWeight.w700)
                ],
              ),
            ),
            CustomServicesList(
              text: 'Plumbing',
              imagePath: 'images/Icons.png',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndiviualServicesScreen(
                        text: 'Plumbing Services',
                      ),
                    ));
              },
            ),
            CustomServicesList(
              text: 'Electrical',
              imagePath: 'images/vector2.png',
              onPressed: () {},
            ),
            CustomServicesList(
              text: 'HVAC',
              imagePath: 'images/Union.png',
              onPressed: () {},
            ),
            CustomServicesList(
              text: 'Plumbing',
              imagePath: 'images/Icons.png',
              onPressed: () {},
            ),
            CustomServicesList(
              text: 'Electrical',
              imagePath: 'images/vector2.png',
              onPressed: () {},
            ),
            CustomServicesList(
              text: 'HVAC',
              imagePath: 'images/Union.png',
              onPressed: () {},
            ),
            CustomServicesList(
              text: 'HVAC',
              imagePath: 'images/Union.png',
              onPressed: () {},
            ),
            CustomServicesList(
              text: 'HVAC',
              imagePath: 'images/Union.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
