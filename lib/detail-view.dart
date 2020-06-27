import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
                'https://storage.googleapis.com/maker-blog-assets/flutter/avatar.jpg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Service',
                  style: Theme.of(context).textTheme.caption.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange.shade700),
                ),
                SizedBox(
                  height: 15.0,
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
        ]),
        Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Chip(
              backgroundColor: Colors.lime.shade100,
              label: Text('Repair'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Chip(
              backgroundColor: Colors.lime.shade100,
              label: Text('Painting'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Chip(
              backgroundColor: Colors.lime.shade100,
              label: Text('Plumbing'),
            ),
          ),
        ]),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
              'From drywall repair to deck construction, our technicians offer a wide range of handyman services. No matter how big or small, all of our work is backed. From drywall repair to deck construction, our technicians offer a wide range of handyman services. No matter how big or small, all of our work is backed.',
              style: Theme.of(context).textTheme.subtitle1),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.topLeft,
          child: Text(
            'Contact us:',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(right: 15.0),
                child: Image(
                    image: AssetImage('images/whatsapp.png'), width: 40.0)),
            Container(
                padding: EdgeInsets.only(right: 15.0),
                child: Image(
                    image: AssetImage('images/telegram.png'), width: 40.0)),
            Container(
                padding: EdgeInsets.only(right: 15.0),
                child:
                    Image(image: AssetImage('images/rappi.png'), width: 40.0))
          ],
        )
      ],
    );
  }
}
