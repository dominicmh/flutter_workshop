import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  final String title;

  const CounterPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title),backgroundColor: Colors.white,),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed this many times:'),
                Text(
                  _counter.toString(),
                  style: Theme.of(context).textTheme.display1,
                )
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        ));
  }
}
