import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Article {
  final int id;
  final String title;
  final String cover;
  final String time;
  final int commontCount;

  Article({this.id, this.title, this.cover, this.commontCount, this.time});
}

class HomeArticleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, index) {
          return HomeArticleItem(Article(
            id: 1,
            title: '标题',
            cover: 'cover',
            time: '2021-03-11',
            commontCount: 12,
          ));
        },
        childCount: 10,
      ),
    );
  }
}

class HomeArticleItem extends StatelessWidget {
  final Article articleData;

  HomeArticleItem(this.articleData);

  Widget _subTitle() {
    TextStyle textStyle = TextStyle(
      height: 1,
      fontSize: ScreenUtil().setWidth(14),
      color: Color.fromRGBO(194, 194, 194, 1),
    );

    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setWidth(20)),
      child: Row(
        children: [
          Text(
            '17:00',
            style: textStyle,
          ),
          Padding(
            padding: EdgeInsets.only(left: ScreenUtil().setHeight(15)),
            child: Text(
              '100评论',
              style: textStyle,
            ),
          )
        ],
      ),
    );
  }

  Widget _cover() {
    return Container(
      width: ScreenUtil().setWidth(145),
      height: ScreenUtil().setWidth(90),
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(18)),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(2)),
    );
  }

  Widget _title() {
    return Text(
      '士官长合集为Xbox在Steam最受欢迎游戏 盗海排第二',
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(height: 1.6),
    );
  }

  Widget _listTile() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(18)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            children: [_title(), _subTitle()],
          )),
          _cover()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
      child: InkWell(
        child: Column(
          children: [
            _listTile(),
            Divider(
              height: .0,
            )
          ],
        ),
      ),
    );
  }
}
