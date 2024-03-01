import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .23),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 40),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30
              .copyWith(fontWeight: FontWeight.w500, fontFamily: kGtSectraFine),
        ),
        const SizedBox(height: 4),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
