import 'package:flutter/material.dart';
import 'package:list_view_app/model/voting_metadata.dart';
import 'package:list_view_app/model/voting_model.dart';

class VotingListPage extends StatelessWidget {
  final VotingModel votingModel = VotingModel();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(child: _buildListView(votingModel.allVotingMetaData))
    ]);
  }

  Widget _buildListView(List<VotingMetadata> data) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _buildRow(index, data[index]);
        });
  }

  Widget _buildRow(int index, VotingMetadata data) {

    //Instantiate a ListTile and set title, subtitle and as trailing an arrow icon (Icons.keyboard_arrow_right)
    //use data provided by VotingMetadata. On Tap event call rowTapped below
    return Text('replace me');
  }

  //will be called if the user taps a row
  void rowTapped(int index) {
    print("row at index $index tapped");
  }
}
