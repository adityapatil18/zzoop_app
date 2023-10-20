import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final double itemSize;
  final int itemCount;
  final Color iconColor;

  CustomRatingBar({
    required this.rating,
    required this.itemSize,
    required this.itemCount,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
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
