import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'counter_provider_page.dart';


void main() => runApp(ProviderDemoApp());

class ProviderDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>.value(value: CounterProvider())
      ],
      child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.orange),
          home: CounterProviderPage()),
    );
  }
}
