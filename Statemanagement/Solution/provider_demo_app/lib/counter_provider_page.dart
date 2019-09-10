import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class CounterProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
        appBar: AppBar(title: Text("Provider Example")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed this many times:'),
            Text(
              counterProvider.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: counterProvider.increment,
          child: Icon(Icons.add),
        ));
  }
}
