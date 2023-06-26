import 'package:bookly/Features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: FeaturedBookItem(),
            );
          } else if (index == 4) {
            return const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: FeaturedBookItem(),
            );
          } else {
            return const FeaturedBookItem();
          }
        },
        itemCount: 5,
      ),
    );
  }
}
