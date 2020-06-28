import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget {
  final Function onPressed;
  final Icon buttonIcon;
  final String text;

  const ItemBottomBar(
      {Key key,
      @required this.buttonIcon,
      @required this.onPressed,
      @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: SizedBox.fromSize(
          size: Size(56, 56), // button width and height
          child: Material(
            color: Colors.transparent, // button color
            child: InkWell(
              splashColor: Colors.white30, // splash color
              onTap: onPressed, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buttonIcon,
                  // icon
                  Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  ),
                  // text
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
