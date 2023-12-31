import 'package:bookly/Features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 49,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Text(
                  'Newest',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewestBooksListView(),
        ),
      ],
    );
  }
}
