import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(1),
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
                  color: Colors.white,
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
                        color: Colors.white,
                        size: 14,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
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
                  color: Color(0xFF07D58C),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Color(0xFF161D24),
                    size: 11,
                  ),
                  Text(
                    'Zzoop Verified',
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF161D24)),
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
                  color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              alignment: Alignment.center,
              height: 20,
              width: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color(0xFF1B4F7F)),
              child: Text(
                '4.3',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingBarIndicator(
                  rating: 5,
                  itemSize: 13.87,
                  itemCount: 5,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Color(0xFFFFC107),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 21,
                  width: 101,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Printing Services',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            Text(
              '220 ratings',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
