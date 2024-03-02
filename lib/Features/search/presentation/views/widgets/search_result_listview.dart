import 'package:bookly/Features/home/presentation/views/widgets/book_listview_item.dart';
import 'package:flutter/material.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListviewItem(),
        );
      },
      itemCount: 10,
      //scrollDirection: Axis.horizontal,
    );
  }
}
