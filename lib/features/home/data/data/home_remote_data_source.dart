import 'package:clean_architectue/core/networking/api_service.dart';
import 'package:clean_architectue/features/home/data/models/book_model/book_model.dart';
import 'package:clean_architectue/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> getNewestBooks();
  Future<List<BookEntity>> getFeaturedBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  //!------------------- getFeaturedBooks ------------------------

  @override
  Future<List<BookEntity>> getFeaturedBooks() async {
    final data = await apiService.getFeaturedBooks();

    List<BookEntity> books = getBookList(data);
    return books;
  }
  //!------------------- getNewestBooks ------------------------

  @override
  Future<List<BookEntity>> getNewestBooks() {
    throw UnimplementedError();
  }

  //!------------------- getBookList ------------------------
  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}
