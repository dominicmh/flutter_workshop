import 'package:flutter/material.dart';
import 'package:list_view_app/pages/voting_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select or create a voting'),
      ),
      body: VotingListPage(),
      floatingActionButton: FloatingActionButton(
        key: Key('btn_new_vote'),
        onPressed: () => _createNewVoting(context),
        tooltip: 'New Voting',
        child: Icon(Icons.add),
      ),
    );
  }

  //will be called if the user taps the FAB
  void _createNewVoting(BuildContext context) {
    print('_createNewVoting tapped');
  }
}
