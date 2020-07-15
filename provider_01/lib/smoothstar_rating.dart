import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingApp extends StatelessWidget {

  var rating = 2.5;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SmoothStarRating(
      rating: rating,
      isReadOnly: false,
      size: 30,
      filledIconData: Icons.star,
      halfFilledIconData: Icons.star_half,
      defaultIconData: Icons.star_border,
      starCount: 5,
      allowHalfRating: true,
      spacing: 2.0,
      color: Colors.orange,
      borderColor: Colors.orange,
      onRated: (value) {
        print("rating value -> $value");
        // print("rating value dd -> ${value.truncate()}");
      },
    ));
  }
}
