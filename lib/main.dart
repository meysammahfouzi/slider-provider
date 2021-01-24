import 'package:flutter/material.dart';
import 'package:slider_provider/pages/slider_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: SliderPage(),
    );
  }
}
