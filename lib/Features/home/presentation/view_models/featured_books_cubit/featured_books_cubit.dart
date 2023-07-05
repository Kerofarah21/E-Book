import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo homerepo;

  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());

  static FeaturedBooksCubit get(context) => BlocProvider.of(context);

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homerepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
