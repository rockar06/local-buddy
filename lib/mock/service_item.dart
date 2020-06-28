import 'package:local_buddy/constants.dart';

class ServiceItem {
  final type = Constants.Service;
  final String title;
  final String score;
  final String picture;

  ServiceItem(
      {this.title, this.score, this.picture = Constants.DefaultPicture});

  static List<ServiceItem> mockedList() {
    return [
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Carpenter", score: "4.0"),
      ServiceItem(title: "Electrician", score: "4.9"),
      ServiceItem(title: "Plumber", score: "3.7"),
      ServiceItem(title: "Electrician", score: "4.2"),
      ServiceItem(title: "Handyman", score: "4.8"),
      ServiceItem(title: "Electrician", score: "4.1"),
      ServiceItem(title: "Handyman", score: "4.1"),
      ServiceItem(title: "Carpenter", score: "4.3"),
      ServiceItem(title: "Plumber", score: "4.9"),
      ServiceItem(title: "Handyman", score: "3.9"),
      ServiceItem(title: "Electrician", score: "4.6"),
      ServiceItem(title: "Carpenter", score: "4.7"),
      ServiceItem(title: "Plumber", score: "4.1"),
      ServiceItem(title: "Handyman", score: "4.3"),
    ];
  }
}
