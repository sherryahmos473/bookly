import 'package:bookly/Features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
            child: SearchResultListview(),
          ),
        ],
      ),
    );
  }
}
