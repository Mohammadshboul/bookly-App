import 'package:booklyapp/Features/home/presentation/view_model/newset_books_cubit/newset_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:booklyapp/core/widget/custom_error_widget.dart';
import 'package:booklyapp/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: BookListViewItem(bookModel: state.books[index],),
            );
          },
        );
        }
        else if(state is NewsetBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
