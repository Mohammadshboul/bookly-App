import 'package:booklyapp/Features/home/presentation/views/widget/book_rating.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
        
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.test), fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          Styles.textStyle20.copyWith(fontFamily: gTsectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const BookRating()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

