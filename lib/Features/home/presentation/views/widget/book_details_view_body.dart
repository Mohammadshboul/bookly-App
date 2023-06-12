import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
