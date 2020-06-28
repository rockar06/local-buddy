import 'package:flutter/material.dart';

import 'custom_search_bar.dart';

class CustomSafeArea extends StatelessWidget {
  final Widget child;

  const CustomSafeArea({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        SafeArea(
          child: Hero(tag: "SearchBar", child: CustomSearchBar()),
        )
      ],
    );
  }
}
