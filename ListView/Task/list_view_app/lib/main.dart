import 'package:flutter/material.dart';
import 'package:list_view_app/pages/home_page.dart';


void main() => runApp(VotingApp());

class VotingApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


