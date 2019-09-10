import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class CounterProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //instantiate a CounterProvider with the help of Provider and BuildContext.
    // See https://pub.dev/packages/provider for details


    return Scaffold(
        appBar: AppBar(title: Text("Provider Example")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed this many times:'),
            Text(
              "TODO", //use counter property of CounterProvider
              style: Theme.of(context).textTheme.display1,
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: null, //call increment on CounterProvider. But only use the reference
          child: Icon(Icons.add),
        ));
  }
}
