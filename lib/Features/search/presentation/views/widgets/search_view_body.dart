import 'package:bookly/Features/search/cubit/search_result_cubit.dart'
    as SearchCubit;
import 'package:bookly/Features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_listview.dart';
import 'package:bookly/core/utils/custom_loading_indicator.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubit/search_result_cubit.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                CustomSearchTextField(),
                SizedBox(height: 20),
                Text('Search Results', style: Styles.textStyle18),
                SizedBox(height: 14),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child:
                BlocBuilder<SearchCubit.SearchResultCubit, SearchResultState>(
              builder: (context, state) {
                if (state is SearchResultSuccess) {
                  return SearchListview(
                    bookModel: state.books,
                  );
                } else if (state is SearchResultFailure) {
                  return CustomErrorWidget(errorMessage: state.errMessage);
                } else if (state is SearchResultInitial) {
                  return const Text(
                    'Search for a book',
                    style: Styles.textStyle14,
                    textAlign: TextAlign.center,
                  );
                } else {
                  return const CustomLoadingIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
