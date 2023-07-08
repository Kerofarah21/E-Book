import 'package:bookly/Features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 16.0,
          ),
          child: CustomSearchTextField(),
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
