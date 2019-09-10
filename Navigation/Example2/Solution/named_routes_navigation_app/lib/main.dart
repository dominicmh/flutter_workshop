import 'package:flutter/material.dart';
import 'package:named_routes_navigation_app/route_generator.dart';
import 'package:named_routes_navigation_app/routing_constants.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    // Start the app with the "/" named route. In this case, the app starts on the HomeScreen widget.
    // When initialRoute is defined, don't define the home property.
    initialRoute: homeScreen,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch survey'),
          onPressed: () async {
            // Navigate to survey screen and wait for a result to come back.
            var result = await Navigator.pushNamed(context, surveyScreen);
            if (result != null) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        // Display returned value from survey screen in dialog.
                        title: Text('The answer is: $result'),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text('Ok.'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ));
            }
          },
        ),
      ),
    );
  }
}

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Survey Screen"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Which came first: the chicken or the egg?'),
                RaisedButton(
                  onPressed: () {
                    // Navigate back to the home screen and return value.
                    Navigator.pop(context, 'chicken 🐣');
                  },
                  child: Text('The chicken!'),
                ),
                RaisedButton(
                  onPressed: () {
                    // Navigate back to the home screen and return value.
                    Navigator.pop(context, 'egg 🥚');
                  },
                  child: Text('The egg! '),
                ),
              ]),
        ));
  }
}
