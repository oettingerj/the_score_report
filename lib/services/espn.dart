import 'package:http/http.dart' as http;
import 'package:the_score_report/models/espn.dart';
import 'dart:convert';

class ESPN {
   static const baseURL = 'https://site.api.espn.com/apis/site/v2';

   static Future<List<Team>> getNBATeams() async {
     var response = await http.get(Uri.parse('$baseURL/sports/basketball/nba/teams'));
     var jsonBody = json.decode(response.body);
     var teamsResponse = TeamsResponse.fromJson(jsonBody);
     return teamsResponse.sports[0].leagues[0].teams;
   }
}
