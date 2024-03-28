import 'package:flutter/material.dart';

class SearchImage extends StatelessWidget {
  const SearchImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 400,
        child: Image.asset(
          'assets/images/search.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
