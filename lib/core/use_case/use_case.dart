import 'package:clean_architectue/core/networking/api_error_model.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, Param> {
  Future<Either<ApiErrorModel, T>> call([Param parm]);
}
