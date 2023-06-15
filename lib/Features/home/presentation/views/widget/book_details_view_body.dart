import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/similer_book_details_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:[
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child:SizedBox(
                    height: 30,
                  ),
                ),
                SimilerBookSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
