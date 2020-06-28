import 'package:flutter/material.dart';
import 'package:local_buddy/detail_view.dart';
import 'package:local_buddy/mock/service_item.dart';

import 'service_avatar.dart';

class ServiceCard extends StatelessWidget {
  final ServiceItem serviceItem;

  const ServiceCard({Key key, @required this.serviceItem}) : super(key: key);

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
              MaterialPageRoute(
                  builder: (context) => DetailView(
                        serviceItem: serviceItem,
                      )),
            );
          },
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                children: <Widget>[
                  ServiceAvatar(
                    serviceItem: serviceItem,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
