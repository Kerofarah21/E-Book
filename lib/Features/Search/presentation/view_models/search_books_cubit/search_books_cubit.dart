import 'package:bookly/Features/Search/data/repos/search_repo.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  final SearchRepo searchRepo;

  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  static SearchBooksCubit get(context) => BlocProvider.of(context);

  Future<void> getSearchBooks({
    required String searchText,
  }) async {
    emit(SearchBooksLoading());

    var result = await searchRepo.fetchSearchBooks(searchText: searchText);

    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
