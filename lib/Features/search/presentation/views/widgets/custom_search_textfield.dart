import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: Opacity(
              opacity: 0.8,
              child: IconButton(
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                iconSize: 20,
                onPressed: () {},
              ),
            ),
            border: BuildOutlineInputBorder(),
            enabledBorder: BuildOutlineInputBorder(),
            focusedBorder: BuildOutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder BuildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
