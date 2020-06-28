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
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
      ServiceItem(title: "Handyman", score: "4.6"),
    ];
  }
}
