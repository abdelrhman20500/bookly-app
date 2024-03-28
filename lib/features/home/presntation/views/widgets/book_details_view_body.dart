import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_actions_buttons.dart';
import 'package:bookly/features/home/presntation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                BookActionsButtons(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 18,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
