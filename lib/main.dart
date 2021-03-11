import 'package:flutter/material.dart';
import 'package:flutter_gamesky/pages/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(AppEntry());
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(488, 808),
      allowFontScaling: true,
      builder: () => MaterialApp(
        home: IndexPage(),
      ),
    );
  }
}
