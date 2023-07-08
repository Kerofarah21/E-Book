import 'package:bookly/Features/Search/presentation/view_models/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Text(
                  'Search Result',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) =>
                      BookItem(book: state.books[index]),
                  itemCount: 10,
                ),
              ),
            ],
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchBooksLoading) {
          return const CustomLoadingIndicator();
        } else {
          return Center(
            child: Text(
              'Find your book',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
          );
        }
      },
    );
  }
}
