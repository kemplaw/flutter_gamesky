import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCarousel extends StatelessWidget {
  Widget _carousel() {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.92,
        autoPlay: true,
        height: ScreenUtil().setWidth(240),
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setWidth(4),
                  ),
                ),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: ScreenUtil().setWidth(10)),
      sliver: SliverToBoxAdapter(
        child: _carousel(),
      ),
    );
  }
}
