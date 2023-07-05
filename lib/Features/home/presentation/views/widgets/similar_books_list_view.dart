import 'package:bookly/Features/home/presentation/views/widgets/navigat_to_book_details.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: NavigatToBookDetails(
                imageUrl: '',
              ),
            );
          } else if (index == 4) {
            return const Padding(
              padding: EdgeInsets.only(right: 22.0),
              child: NavigatToBookDetails(
                imageUrl: '',
              ),
            );
          } else {
            return const NavigatToBookDetails(
              imageUrl: '',
            );
          }
        },
        itemCount: 5,
      ),
    );
  }
}
