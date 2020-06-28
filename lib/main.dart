import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/components/custom_bottom_app_bar.dart';
import 'package:flutterhackatonapp/components/custom_search_bar.dart';
import 'package:flutterhackatonapp/constants.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              forceElevated: true,
              elevation: SliverAppBarElevation,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(SliverAppBarHeight),
                child: CustomSearchBar(
                  onlyShowSearch: true,
                ),
              ),
              floating: true,
              backgroundColor: Colors.transparent,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ServiceCard();
              }, childCount: 12),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Go to home
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
