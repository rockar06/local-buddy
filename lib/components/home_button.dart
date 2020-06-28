import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:local_buddy/constants.dart';
import 'package:local_buddy/map-view.dart';

class HomeButton extends StatelessWidget {
  HomeButton(this.homeOption);

  final homeOption;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openBuilder: (context, _) {
        return MapView();
      },
      tappable: false,
      closedElevation: 6.0,
      closedShape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(Constants.FabDimensions / 2))),
      closedBuilder: (context, action) {
        return FloatingActionButton(
          onPressed: () => {
            if (this.homeOption == "list")
              {Navigator.pop(context)}
            else
              {action.call()}
          },
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            homeOption == "list" ? Icons.home : Icons.map,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
