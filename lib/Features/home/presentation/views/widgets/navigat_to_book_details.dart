import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class NavigatToBookDetails extends StatelessWidget {
  const NavigatToBookDetails({
    super.key,
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
      child: const CustomBookItem(),
    );
  }
}
