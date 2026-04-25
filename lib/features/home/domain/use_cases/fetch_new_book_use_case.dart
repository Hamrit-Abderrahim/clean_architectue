import 'package:clean_architectue/core/networking/api_error_model.dart';
import 'package:clean_architectue/core/use_case/no_param_use_case.dart';
import 'package:clean_architectue/features/home/domain/entities/book_entity.dart';
import 'package:clean_architectue/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewBooksUseCase extends NoParamUseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchNewBooksUseCase(this.homeRepo);

  @override
  Future<Either<ApiErrorModel, List<BookEntity>>> call() async {
    return await homeRepo.getNewestBooks();
  }
}
