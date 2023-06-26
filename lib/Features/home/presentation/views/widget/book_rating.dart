import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.center, required this.rating, required this.count});
final MainAxisAlignment? mainAxisAlignment;
final num rating;
final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 15,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(opacity: 1,
          child: Text(
            "($count)",
            style: Styles.textStyle14.copyWith(
              color: const Color(0xff707070),
              fontWeight: FontWeight.w800,
            ),
          ),
        )
      ],
    );
  }
}
