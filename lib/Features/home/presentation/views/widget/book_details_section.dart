import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
              imageUrl:
                  bookModel.volumeInfo.imageLinks?.thumbnail ?? gDefaultBook),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          // overflow: TextOverflow.ellipsis,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        BooksAction(bookModel: bookModel,),
      ],
    );
  }
}
