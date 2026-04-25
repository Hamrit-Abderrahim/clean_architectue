import 'package:clean_architectue/core/networking/api_error_model.dart';
import 'package:clean_architectue/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<ApiErrorModel, List<BookEntity>>> getFeaturedBooks();
  Future<Either<ApiErrorModel, List<BookEntity>>> getNewestBooks();
}
