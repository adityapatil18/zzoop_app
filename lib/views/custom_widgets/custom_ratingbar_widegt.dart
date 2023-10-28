import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zzoop/constants/colors.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final double itemSize;
  final int itemCount;
  final Color iconColor;
  final Color? unstarColor;

  CustomRatingBar({
    required this.rating,
    required this.itemSize,
    required this.itemCount,
    required this.iconColor,
    required this.unstarColor,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      unratedColor: unstarColor,
      rating: rating,
      itemSize: itemSize,
      itemCount: itemCount,
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: iconColor,
      ),
    );
  }
}
