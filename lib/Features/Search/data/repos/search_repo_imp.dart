import 'package:bookly/Features/Search/data/repos/search_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiService;

  SearchRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({
    required String searchText,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=$searchText',
      );

      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }

      return left(ServerFailure(error.toString()));
    }
  }
}
