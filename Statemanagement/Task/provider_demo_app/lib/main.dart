import 'package:flutter/material.dart';
import 'counter_page.dart';


void main() => runApp(ProviderDemoApp());

class ProviderDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return a MultiProvider from provider package and setChangeNotifierProvider encapsulated
    // in an array for property providers. Property child is the MaterialApp.
    // See https://pub.dev/packages/provider for details
    return MaterialApp(
          theme: ThemeData(primarySwatch: Colors.orange),
          //Use CounterProviderPage
          home: CounterPage(),
    );
  }
}
