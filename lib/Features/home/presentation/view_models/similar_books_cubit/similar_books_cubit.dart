import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  static SimilarBooksCubit get(context) => BlocProvider.of(context);

  Future<void> getSimilarBooks({
    required String categoryName,
  }) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.fetchSimilarBooks(
      categoryName: categoryName,
    );

    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
