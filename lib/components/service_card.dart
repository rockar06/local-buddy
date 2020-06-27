import 'package:flutter/material.dart';
import 'service_avatar.dart';

class ServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Column(
            children: <Widget>[
              ServiceAvatar(),
            ],
          )),
    );
  }
}
