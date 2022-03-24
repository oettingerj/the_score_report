// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'espn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsResponse _$TeamsResponseFromJson(Map<String, dynamic> json) =>
    TeamsResponse(
      (json['sports'] as List<dynamic>)
          .map((e) => Sport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamsResponseToJson(TeamsResponse instance) =>
    <String, dynamic>{
      'sports': instance.sports.map((e) => e.toJson()).toList(),
    };

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      json['id'] as String,
      json['name'] as String,
      json['abbreviation'] as String,
      json['shortName'] as String,
      (json['teams'] as List<dynamic>)
          .map((e) => TeamWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'shortName': instance.shortName,
      'teams': instance.teams.map((e) => e.toJson()).toList(),
    };

Sport _$SportFromJson(Map<String, dynamic> json) => Sport(
      json['id'] as String,
      json['name'] as String,
      (json['leagues'] as List<dynamic>)
          .map((e) => League.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SportToJson(Sport instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'leagues': instance.leagues,
    };

ImageAsset _$ImageAssetFromJson(Map<String, dynamic> json) => ImageAsset(
      json['href'] as String,
      json['width'] as int,
      json['height'] as int,
    );

Map<String, dynamic> _$ImageAssetToJson(ImageAsset instance) =>
    <String, dynamic>{
      'href': instance.href,
      'width': instance.width,
      'height': instance.height,
    };

TeamWrapper _$TeamWrapperFromJson(Map<String, dynamic> json) => TeamWrapper(
      Team.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamWrapperToJson(TeamWrapper instance) =>
    <String, dynamic>{
      'team': instance.team.toJson(),
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      json['id'] as String,
      json['location'] as String,
      json['name'] as String,
      json['abbreviation'] as String,
      json['displayName'] as String,
      json['shortDisplayName'] as String,
      json['color'] as String,
      json['alternateColor'] as String,
      (json['logos'] as List<dynamic>)
          .map((e) => ImageAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'displayName': instance.displayName,
      'shortDisplayName': instance.shortDisplayName,
      'color': instance.color,
      'alternateColor': instance.alternateColor,
      'logos': instance.logos.map((e) => e.toJson()).toList(),
    };
