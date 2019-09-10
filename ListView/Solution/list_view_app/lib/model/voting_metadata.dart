import 'package:flutter/material.dart';

//A class that describes the voting (Name, Title, Subtitle...)
class VotingMetadata {
  final String id; //set by server
  final String title;
  final String subtitle;

  VotingMetadata(
      {@required this.id,
        @required this.title,
        @required this.subtitle});
}
