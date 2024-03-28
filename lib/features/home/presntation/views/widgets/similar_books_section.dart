import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presntation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like :',
          style: Styles.textStyle14
              .copyWith(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 18,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
