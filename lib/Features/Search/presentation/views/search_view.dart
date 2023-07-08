import 'package:bookly/Features/Search/data/repos/search_repo_imp.dart';
import 'package:bookly/Features/Search/presentation/view_models/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/searvh_view_body.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(
        getIt.get<SearchRepoImp>(),
      ),
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
