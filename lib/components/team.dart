import 'package:flutter/material.dart';
import 'package:the_score_report/models/espn.dart';

class TeamDisplay extends StatelessWidget {
  final Team team;

  TeamDisplay({required this.team});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        child: Row(
          children: [
            Image.network(team.logos[0].href, height: 100),
            Text(
                team.displayName
            )
          ],
        ),
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
