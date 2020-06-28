import 'package:local_buddy/constants.dart';

class ServiceItem {
  final String type;
  final String title;
  final String score;
  final String picture;

  ServiceItem(
      {this.type,
      this.title,
      this.score,
      this.picture = Constants.DefaultPicture});

  static List<ServiceItem> mockedServicesList() {
    return [
      ServiceItem(type: Constants.Service, title: "Handyman", score: "4.6"),
      ServiceItem(type: Constants.Service, title: "Carpenter", score: "4.0"),
      ServiceItem(type: Constants.Service, title: "Electrician", score: "4.9"),
      ServiceItem(type: Constants.Service, title: "Plumber", score: "3.7"),
      ServiceItem(type: Constants.Service, title: "Electrician", score: "4.2"),
      ServiceItem(type: Constants.Service, title: "Handyman", score: "4.8"),
      ServiceItem(type: Constants.Service, title: "Electrician", score: "4.1"),
      ServiceItem(type: Constants.Service, title: "Handyman", score: "4.1"),
      ServiceItem(type: Constants.Service, title: "Carpenter", score: "4.3"),
      ServiceItem(type: Constants.Service, title: "Plumber", score: "4.9"),
      ServiceItem(type: Constants.Service, title: "Handyman", score: "3.9"),
      ServiceItem(type: Constants.Service, title: "Electrician", score: "4.6"),
      ServiceItem(type: Constants.Service, title: "Carpenter", score: "4.7"),
      ServiceItem(type: Constants.Service, title: "Plumber", score: "4.1"),
      ServiceItem(type: Constants.Service, title: "Handyman", score: "4.3"),
    ];
  }

  static List<ServiceItem> mockedProductsList() {
    return [
      ServiceItem(type: Constants.Product, title: "Pastry", score: "4.6"),
      ServiceItem(type: Constants.Product, title: "Trees", score: "4.0"),
      ServiceItem(type: Constants.Product, title: "Fruits", score: "4.9"),
      ServiceItem(
          type: Constants.Product, title: "Meat and Fish", score: "3.7"),
      ServiceItem(type: Constants.Product, title: "Pets", score: "4.2"),
      ServiceItem(
          type: Constants.Product, title: "Meat and Fish", score: "4.8"),
      ServiceItem(type: Constants.Product, title: "Trees", score: "4.1"),
      ServiceItem(type: Constants.Product, title: "Fruits", score: "4.1"),
      ServiceItem(type: Constants.Product, title: "Trees", score: "4.3"),
      ServiceItem(type: Constants.Product, title: "Fruits", score: "4.9"),
      ServiceItem(
          type: Constants.Product, title: "Meat and Fish", score: "3.9"),
      ServiceItem(type: Constants.Product, title: "Trees", score: "4.6"),
      ServiceItem(type: Constants.Product, title: "Pastry", score: "4.7"),
      ServiceItem(type: Constants.Product, title: "Trees", score: "4.1"),
      ServiceItem(
          type: Constants.Product, title: "Meat and Fish", score: "4.3"),
    ];
  }
}
