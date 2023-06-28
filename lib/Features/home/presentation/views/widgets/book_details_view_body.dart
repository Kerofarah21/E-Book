import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .2,
                ),
                child: const CustomBookItem(),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                'Harry Potter and The Goblet of Fire',
                style: Styles.textStyle30,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'J.K. Rawling',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37.0,
              ),
              const BooksAction(),
              const Expanded(
                child: SizedBox(
                  height: 50.0,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const SimilarBooksListView(),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
