import 'package:flutter/material.dart';
import 'package:local_buddy/components/item_bottom.dart';
import 'package:local_buddy/mock/service_item.dart';

import '../constants.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Function(List<ServiceItem> newItems) updateList;

  const CustomBottomAppBar({Key key, @required this.updateList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          ItemBottomBar(
            buttonIcon: Constants.ServicesIcon,
            onPressed: () {
              updateList(ServiceItem.mockedServicesList());
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
              updateList(ServiceItem.mockedProductsList());
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
