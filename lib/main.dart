import 'package:flutter/material.dart';
import 'package:flutter_workshop/pages/home_page.dart';

void main() => runApp(MoodyApp());

class MoodyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moody',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


