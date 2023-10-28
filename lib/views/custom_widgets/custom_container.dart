import 'package:flutter/material.dart';
import 'package:zzoop/constants/colors.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_container.dart';
import 'package:zzoop/views/custom_widgets/custom_rating_counts_widgets.dart';
import 'package:zzoop/views/custom_widgets/custom_ratingbar_widegt.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: AppColors.mainBlackColor.withOpacity(1),
          image: DecorationImage(
              image: AssetImage('images/rectnagle_12.png'), opacity: 0.3)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: AppColors.white,
                  iconSize: 20,
                ),
                Container(
                  height: 40,
                  width: 99,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.share,
                        color: AppColors.white,
                        size: 14,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 9),
            Container(
              height: 18.7,
              width: 83.54,
              decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: AppColors.mainBlackColor,
                    size: 11,
                  ),
                  Text(
                    'Zzoop Verified',
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainBlackColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Genesis Printing and Design',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white),
            ),
            SizedBox(
              height: 12,
            ),
            CustomRatingContainer(
                width: 24,
                height: 20,
                borderRadius: 5,
                text: '4.3',
                fontSize: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRatingBar(
                  rating: 4.3,
                  itemSize: 13.87,
                  itemCount: 5,
                  iconColor: AppColors.starColor,
                  unstarColor: AppColors.unStarColor,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 21,
                  width: 101,
                  decoration: BoxDecoration(
                      color: AppColors.mainBlackColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Printing Services',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white),
                  ),
                )
              ],
            ),
            CustomRatingCount(
                text: '220 Ratings', fontSize: 10, color: AppColors.white)
          ],
        ),
      ),
    );
  }
}
