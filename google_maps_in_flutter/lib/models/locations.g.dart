// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Campus _$CampusFromJson(Map<String, dynamic> json) => Campus(
      id: json['id'] as String,
      name: json['name'] as String,
      info: json['info'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$CampusToJson(Campus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'info': instance.info,
      'lat': instance.lat,
      'long': instance.long,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) => Locations(
      campus: (json['campus'] as List<dynamic>)
          .map((e) => Campus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
      'campus': instance.campus,
    };
