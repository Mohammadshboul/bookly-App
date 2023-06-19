import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future <Either<Failure,List<BookModel>>> fetchBestSellerBooks();
 Future <Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}