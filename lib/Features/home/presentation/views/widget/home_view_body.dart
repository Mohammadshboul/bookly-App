import 'package:booklyapp/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 35,),
        Text("Best Seller",style: Styles.titleMedium,)
      ],
    );
  }
}

