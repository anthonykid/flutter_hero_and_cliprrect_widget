import 'package:flutter/material.dart';
import 'package:flutter_hero_clipreact/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

//hero is usefull to make an animation that slides for the next page, so it look like the widget that we tap are going to slide and expand
//it's not only like a default moving page, because the slide not from the bottom, but from our widget that we wrap using hero