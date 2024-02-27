import 'package:bookly/Features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const FeaturedListViewItem();
        },
      ),
    );
  }
}
