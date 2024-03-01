import 'package:bookly/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                SizedBox(height: 30),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 49)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
