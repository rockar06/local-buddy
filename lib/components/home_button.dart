import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/constants.dart';
import 'package:flutterhackatonapp/main.dart';
import 'package:flutterhackatonapp/map-view.dart';

class HomeButton extends StatelessWidget {
  HomeButton(this.homeOption);

  final homeOption;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openBuilder: (context, _) {
        if(this.homeOption == "map") {
          return MapView();
        } else {
          return MyHomePage();
        }
      },
      closedElevation: 6.0,
      closedColor: Theme.of(context).primaryColor,
      closedShape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(Constants.FabDimensions / 2))),
      closedBuilder: (context, _) {
        return SizedBox(
          height: Constants.FabDimensions,
          width: Constants.FabDimensions,
          child: Center(
            child: Icon(
              Icons.map,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
