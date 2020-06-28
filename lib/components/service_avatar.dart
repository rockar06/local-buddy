import 'package:flutter/material.dart';
import 'package:local_buddy/mock/service_item.dart';

class ServiceAvatar extends StatelessWidget {
  final ServiceItem serviceItem;

  const ServiceAvatar({Key key, @required this.serviceItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CircleAvatar(
        radius: 45.0,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(serviceItem.picture),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              serviceItem.type,
              style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              serviceItem.title,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5,
            ),
            Row(
              children: <Widget>[
                Text(
                  serviceItem.score,
                  style: Theme
                      .of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
