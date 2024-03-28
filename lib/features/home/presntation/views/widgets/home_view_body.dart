import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presntation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presntation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presntation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kSearchView);
                    },
                    image: AssetsData.logo,
                    icon: Icons.search),
                const FeaturedBookslListView(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: NewestBooksListView(),
          )
        ],
      ),
    );
  }
}
