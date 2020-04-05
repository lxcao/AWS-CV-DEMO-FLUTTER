import 'package:cv_car_mobile_app_layout_flutter/screens/cover_screen.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Car Mobile APP Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: blackAccentColor,
        primaryColor: darkAccentColor,
        backgroundColor: darkBackgroundColor,
      ),
      home: CoverScreen(),
    );
  }
}
