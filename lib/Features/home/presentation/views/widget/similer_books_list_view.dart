import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}