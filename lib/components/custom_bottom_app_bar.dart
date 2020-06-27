import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: Icon(Icons.list),
              color: Colors.white,
              onPressed: () {
                // List all places
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {
                // Search places
              },
            ),
          ),
        ],
      ),
      color: Colors.blue,
      shape: CircularNotchedRectangle(),
    );
  }
}
