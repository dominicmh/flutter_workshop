import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select or create a voting'),
      ),
      body: Center(
        child: Text("I'm just a placholder, waiting to be replaced"),
      ),
      //TODO: Add FloatingActionButton to floatingActionButton-property.
      // "Icons.add" might be a good symbol. Call _createNewVoting on pressed event
      // See https://material.io/components/buttons-floating-action-button/ for help
    );
  }

  //will be called if the user taps the FAB
  void _createNewVoting(BuildContext context) {
    print('_createNewVoting tapped');
  }
}
