import 'package:flutter/material.dart';
import 'package:flutter_gamesky/pages/home/widgets/index.dart';
import 'package:flutter_gamesky/widgets/index.dart';
import 'package:flutter_gamesky/utils/index.dart';

class HomePage extends StatelessWidget {
  Widget _icon() {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Icon(
        Icons.email_outlined,
        color: defaultLabelColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SearchInput(),
        actions: [_icon()],
        bottom: HomeTabBar(),
        toolbarHeight: 100,
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          HomeCarousel(),
          HomeArticleList(),
        ],
      ),
    );
  }
}
