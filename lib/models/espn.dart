import 'package:json_annotation/json_annotation.dart';

part 'espn.g.dart';

@JsonSerializable(explicitToJson: true)
class TeamsResponse {
  List<Sport> sports;

  TeamsResponse(this.sports);

  factory TeamsResponse.fromJson(Map<String, dynamic> json) => _$TeamsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TeamsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class League {
  String id;
  String name;
  String abbreviation;
  String shortName;
  List<Team> teams;

  League(this.id, this.name, this.abbreviation, this.shortName, this.teams);

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueToJson(this);
}

@JsonSerializable()
class Sport {
  String id;
  String name;
  List<League> leagues;

  Sport(this.id, this.name, this.leagues);

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);
  Map<String, dynamic> toJson() => _$SportToJson(this);
}

@JsonSerializable()
class Image {
  String href;
  int width;
  int height;

  Image(this.href, this.width, this.height);

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Team {
  String id;
  String location;
  String name;
  String abbreviation;
  String displayName;
  String shortDisplayName;
  String color;
  String alternateColor;
  List<Image> logos;

  Team(this.id, this.location, this.name, this.abbreviation, this.displayName,
      this.shortDisplayName, this.color, this.alternateColor, this.logos);

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
