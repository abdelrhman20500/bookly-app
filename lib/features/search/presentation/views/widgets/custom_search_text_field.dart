import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    String? searchValue;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        onChanged: (value) {
          searchValue = value;
        },
        decoration: InputDecoration(
            enabledBorder: outLinedInputBorder(),
            focusedBorder: outLinedInputBorder()
                .copyWith(borderSide: const BorderSide(color: Colors.white)),
            labelText: 'Search',
            suffixIcon: IconButton(
                onPressed: () {
                  if (searchValue == null) {
                  } else {
                    BlocProvider.of<SearchBooksCubit>(context)
                        .fetchSimilarBooks(searchText: searchValue!);
                  }
                },
                icon: const Icon(Icons.search))),
      ),
    );
  }

  OutlineInputBorder outLinedInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
