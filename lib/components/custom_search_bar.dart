import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
        child: SizedBox(
          height: 40.0,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Search here..."),
                ),
              ),
              VerticalDivider(
                color: Colors.black45,
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black45,
                ),
                onPressed: () {
                  // Search items
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
