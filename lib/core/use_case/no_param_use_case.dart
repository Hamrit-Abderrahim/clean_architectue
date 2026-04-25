import 'package:clean_architectue/core/networking/api_error_model.dart';
import 'package:dartz/dartz.dart';

abstract class NoParamUseCase<T> {
  Future<Either<ApiErrorModel, T>> call();
}
