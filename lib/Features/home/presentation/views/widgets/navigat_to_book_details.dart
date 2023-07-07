import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class NavigatToBookDetails extends StatelessWidget {
  final BookModel book;

  const NavigatToBookDetails({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookDetailsView(book: book),
        ),
      ),
      child: CustomBookImage(
        imageUrl: book.volumeInfo!.imageLinks?.thumbnail ?? '',
      ),
    );
  }
}
