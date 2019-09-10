import 'package:aare_temp_app/water_temp_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'aare_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider<AareService>.value(value: AareService())
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WaterTempPage(),
    ));
  }
}

