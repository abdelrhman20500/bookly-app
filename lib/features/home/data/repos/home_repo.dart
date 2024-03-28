import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedbooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestbooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilartbooks(
      {required String category});
}
