import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_score_report/components/team.dart';
import 'package:the_score_report/services/espn.dart';

import 'models/espn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.black26,
              width: 0.5
            ),
            borderRadius: BorderRadius.circular(10.0)
          ),
          elevation: 0
        )
      ),
      home: const TeamsList(title: 'NBA Teams'),
    );
  }
}

class TeamsList extends StatefulWidget {
  const TeamsList({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TeamsList> createState() => _TeamsListState();
}

class _TeamsListState extends State<TeamsList> {
  List<Team> teams = [];

  @override
  void initState() {
    super.initState();
    ESPN.getNBATeams().then((teamsList) => setState(() {
        teams = teamsList;
      })
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: teams.map((team) => TeamDisplay(team: team)).toList(),
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
