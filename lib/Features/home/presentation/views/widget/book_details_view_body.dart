import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}
