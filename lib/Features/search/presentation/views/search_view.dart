import 'package:bookly/Features/search/cubit/search_result_cubit.dart';
import 'package:bookly/Features/search/data/search_repo_impl.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchResultCubit>(
      create: (context) => SearchResultCubit(
        SearchRepoImpl(
          ApiService(
            Dio(),
          ),
        ),
      ), // Provide an instance of SearchResultCubit
      child: const Scaffold(
        body: SafeArea(
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
