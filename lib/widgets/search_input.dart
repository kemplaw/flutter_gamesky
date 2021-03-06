import 'package:flutter/material.dart';
import 'package:flutter_gamesky/utils/index.dart';

class SearchInput extends StatefulWidget {
  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final Widget _searchIcon = Padding(
    padding: EdgeInsets.only(right: 3),
    child: Icon(
      Icons.search_rounded,
      size: 20,
      color: defaultLabelColor,
    ),
  );

  final Widget _search = Expanded(
    flex: 1,
    child: TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: EdgeInsets.symmetric(vertical: 0),
        hintText: '游民星空，不止聊游戏~',
        hintStyle: TextStyle(fontSize: 12, color: defaultLabelColor),
        border: InputBorder.none,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 6, bottom: 6),
      decoration: BoxDecoration(
          color: Color.fromRGBO(238, 238, 238, 1),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_searchIcon, _search],
      ),
    );
  }
}
