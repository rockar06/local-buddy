import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/main.dart';

class HomeButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Go to home
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      },
      child: Icon(Icons.home, color: Colors.white),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}