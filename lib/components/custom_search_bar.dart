import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final bool onlyShowSearch;

  CustomSearchBar({Key key, this.onlyShowSearch = false}) : super(key: key);

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final _focusNode = FocusNode();
  final _textController = TextEditingController();

  @override
  void initState() {
    _focusNode.addListener(_onTextFieldFocusChange);
    super.initState();
  }

  void _onTextFieldFocusChange() {
    if (_focusNode.hasFocus && widget.onlyShowSearch) {
      print(("Transition to map view"));
    }
  }

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
                  focusNode: _focusNode,
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
