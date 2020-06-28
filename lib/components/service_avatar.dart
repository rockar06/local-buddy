import 'package:flutter/material.dart';

class ServiceAvatar extends StatelessWidget {
  const ServiceAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CircleAvatar(
        radius: 45.0,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(
            'https://storage.googleapis.com/maker-blog-assets/flutter/avatar.jpg'),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Service',
              style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Handyman',
              style: Theme.of(context).textTheme.headline5,
            ),
            Row(
              children: <Widget>[
                Text(
                  '4.9',
                  style: Theme.of(context)
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
