import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/functions/launch_custom_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  final BookModel book;

  const BooksAction({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 38.0,
      ),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
              fontSize: 18.0,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: getText(book),
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              onPressed: () {
                launchCustomUrl(context, book.volumeInfo!.previewLink);
              },
            ),
          )
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo!.previewLink == null) {
      return 'Not Availabe';
    }
    return 'Preview';
  }
}
