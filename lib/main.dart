import 'package:flutter/material.dart';
import 'package:local_buddy/components/custom_bottom_app_bar.dart';
import 'package:local_buddy/components/custom_search_bar.dart';
import 'package:local_buddy/components/home_button.dart';
import 'package:local_buddy/constants.dart';
import 'package:local_buddy/mock/service_item.dart';

import 'components/service_card.dart';

class Service {
  String name;
  String avatarUrl;

  Service(this.name, this.avatarUrl);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hackaton',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.lime,
        primaryColorLight: Colors.red.shade100,
        primaryColorDark: Colors.red.shade700,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final itemsToShow = ServiceItem.mockedList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              forceElevated: true,
              elevation: Constants.SliverAppBarElevation,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(Constants.SliverAppBarHeight),
                child: CustomSearchBar(),
              ),
              floating: true,
              backgroundColor: Colors.transparent,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ServiceCard(
                  serviceItem: itemsToShow[index],
                );
              }, childCount: itemsToShow.length),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: HomeButton("map"),
    );
  }
}
