import 'package:bookly/Features/search/cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});
  
  @override
  Widget build(BuildContext context) {
    String text = 'Programming';
    return Center(
      child: TextField(
         onSubmitted: (value){
          text = value;
          BlocProvider.of<SearchResultCubit>(context)
              .fetchSearchResults(category: text);
        },
        decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: Opacity(
            opacity: 0.8,
            child: IconButton(
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                iconSize: 20,
                onPressed: () {
                  BlocProvider.of<SearchResultCubit>(context)
              .fetchSearchResults(category: text);
                }),
          ),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
       
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
