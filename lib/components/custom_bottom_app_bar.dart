import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/components/item_bottom.dart';

import '../constants.dart';

class CustomBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          ItemBottomBar(
            buttonIcon: Constants.ServicesIcon,
            onPressed: () {
              // Search places
              final snackBar = SnackBar(
                content: Text("Building..."),
                behavior: SnackBarBehavior.floating,
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            text: Constants.ServicesLabel,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          ItemBottomBar(
            buttonIcon: Constants.ProductsIcon,
            onPressed: () {
              // Search places
              final snackBar = SnackBar(
                content: Text("Building..."),
                behavior: SnackBarBehavior.floating,
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            text: Constants.ProductsLabel,
          ),
        ],
      ),
      color: Theme.of(context).primaryColor,
      shape: CircularNotchedRectangle(),
    );
  }
}
