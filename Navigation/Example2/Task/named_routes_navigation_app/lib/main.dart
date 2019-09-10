import 'package:flutter/material.dart';
import 'package:named_routes_navigation_app/route_generator.dart';
import 'package:named_routes_navigation_app/routing_constants.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),

    // Set the initialRoute to the HomeScreen.
    initialRoute: null,

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
          onPressed: () {

            // Display the SurveyScreen when button is pressed (hint: use Navigator.pushNamed()

            // Wait for a result to come back from SurveyScreen (hint: use 'await' keyword)
            var result;

            if (result != null) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(

                        // Display returned value from survey screen in dialog.
                        title: Text('TODO'),

                        actions: <Widget>[
                          new FlatButton(
                            child: new Text('Ok.'),
                            onPressed: () {

                              // Navigate back to previous screen.

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

                    // Navigate back to Home Screen and return 'chicken'.

                  },
                  child: Text('The chicken!'),
                ),
                RaisedButton(
                  onPressed: () {

                    // Navigate back to Home Screen and return 'egg'.

                  },
                  child: Text('The egg!'),
                ),
              ]),
        ));
  }
}
