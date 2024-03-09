import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_listview_item.dart';
import 'package:flutter/material.dart';

class SearchListview extends StatelessWidget {
  const SearchListview({super.key, required this.bookModel});
  final List<BookModel> bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SearchListViewItem(bookModel: bookModel[index]),
        );
      },
      itemCount: bookModel.length,
      //scrollDirection: Axis.horizontal,
    );
  }
}

mixin SearchResultCubit {}
