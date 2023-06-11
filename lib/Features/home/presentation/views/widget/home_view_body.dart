import 'package:booklyapp/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:booklyapp/core/utils/assets.dart';
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
        SizedBox(height: 25,),
        Text("Best Seller",style: Styles.textStyle18,),
        SizedBox(height: 25,),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 130,
      child: Row(children: [
       AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                image: AssetImage(AssetsData.test), fit: BoxFit.fill),
          ),
        ),
      ),
         const Column(children: [],),
      ],),
    );
  }
}