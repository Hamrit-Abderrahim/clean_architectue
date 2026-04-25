import 'package:clean_architectue/core/networking/api_error_model.dart';
import 'package:clean_architectue/features/home/domain/entities/book_entity.dart';
import 'package:clean_architectue/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<ApiErrorModel, List<BookEntity>>> call() async {
    return await homeRepo.getFeaturedBooks();
  }
}
