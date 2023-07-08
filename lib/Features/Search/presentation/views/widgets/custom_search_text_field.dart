import 'package:bookly/Features/Search/presentation/view_models/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return TextField(
      controller: searchController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: outlinedInputBorder(),
        focusedBorder: outlinedInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            SearchBooksCubit.get(context).getSearchBooks(
              searchText: searchController.text,
            );
          },
          icon: const Opacity(
            opacity: .7,
            child: Icon(
              Icons.search,
            ),
          ),
        ),
      ),
      onSubmitted: (value) => SearchBooksCubit.get(context).getSearchBooks(
        searchText: searchController.text,
      ),
    );
  }

  OutlineInputBorder outlinedInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(
        15.0,
      ),
    );
  }
}
