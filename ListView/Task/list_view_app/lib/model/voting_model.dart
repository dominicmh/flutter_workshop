

import 'package:list_view_app/model/voting_metadata.dart';

class VotingModel {
  //hard coded values
  List<VotingMetadata> _votingMetadata = [
    VotingMetadata(id: '1', title: 'Voting 1', subtitle: "Awesome Voting"),
    VotingMetadata(id: '2', title: 'Voting 2', subtitle: "How much is the fish?"),
    VotingMetadata(id: '3', title: 'Voting 3', subtitle: "Tabs or spaces?"),
    VotingMetadata(id: '4', title: 'Voting 4', subtitle: "Flutter or Xamarin?"),
  ];
  //a getter for content of private variable
  List<VotingMetadata> get allVotingMetaData {
    return List.from(_votingMetadata);
  }
}