import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/map-view.dart';

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
    if (!widget.onlyShowSearch) _focusNode.requestFocus();
    super.initState();
  }

  void _onTextFieldFocusChange() {
    if (_focusNode.hasFocus && widget.onlyShowSearch) {
      _focusNode.unfocus();
      _openMapView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
          child: SizedBox(
            height: 40.0,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    readOnly: widget.onlyShowSearch,
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
                    if (widget.onlyShowSearch) {
                      _openMapView();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openMapView() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MapView()));
  }
}
