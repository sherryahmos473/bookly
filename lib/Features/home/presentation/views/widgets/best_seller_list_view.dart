import 'package:bookly/Features/home/presentation/views/widgets/book_listview_item.dart';
import 'package:flutter/material.dart';

class BookListview extends StatelessWidget {
  const BookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListviewItem(),
        );
      },
      itemCount: 5,
      //scrollDirection: Axis.horizontal,
    );
  }
}