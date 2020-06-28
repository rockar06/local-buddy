import 'package:flutter/material.dart';
import 'package:local_buddy/detail-view.dart';

import 'service_avatar.dart';

class ServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 6.0),
      child: Card(
        elevation: 2.0,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailView()),
            );
          },
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                children: <Widget>[
                  ServiceAvatar(),
                ],
              )),
        ),
      ),
    );
  }
}
