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
    return ListTile(
        key: Key('voting_item_$index'),
        title: Text(
          '${data.title}',
          style: TextStyle(fontSize: 18.0),
        ),
        subtitle: Text(
          '${data.subtitle}',
          style: TextStyle(fontSize: 15.0, color: Colors.grey),
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 20.0),
        onTap: () => rowTapped(index));
  }

  //will be called if the user taps a row
  void rowTapped(int index) {
    print("row at index $index tapped");
  }
}
