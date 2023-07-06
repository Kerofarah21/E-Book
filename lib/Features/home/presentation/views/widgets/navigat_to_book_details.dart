import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class NavigatToBookDetails extends StatelessWidget {
  final String imageUrl;

  const NavigatToBookDetails({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BookDetailsView(),
        ),
      ),
      child: CustomBookImage(
        imageUrl: imageUrl,
      ),
    );
  }
}
