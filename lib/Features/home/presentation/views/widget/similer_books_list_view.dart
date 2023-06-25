import 'package:booklyapp/Features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:booklyapp/core/widget/custom_error_widget.dart';
import 'package:booklyapp/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .18,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: CustomBookImage(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.tuX3smXJ04DD_flNISF0kwHaFj?w=243&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
        );
      },
    ),
  );
}else if(state is SimilarBooksFailure){
  return CustomErrorWidget(errMessage: state.errMessage);
}else{
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
