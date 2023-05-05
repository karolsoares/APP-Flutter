import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'locations.g.dart';

@JsonSerializable()
class LatLng {
  LatLng({
    required this.lat,
    required this.lng,
  });

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  final double lat;
  final double lng;
}

@JsonSerializable()
class Campus {
  Campus({
    required this.id,
    required this.name,
    required this.info,
    required this.lat,
    required this.long,
  });

  factory Campus.fromJson(Map<String, dynamic> json) => _$CampusFromJson(json);
  Map<String, dynamic> toJson() => _$CampusToJson(this);

  final String id;
  final String name;
  final String info;
  final double lat;
  final double long;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.campus,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<Campus> campus;
}

Future<Locations> getCampusAtitus() async {
  const atitusLocationsURL =
      'https://644c039f17e2663b9dfe11e9.mockapi.io/info/locais/';

  try {
    final response = await http.get(Uri.parse(atitusLocationsURL));
    if (response.statusCode == 200) {
      return Locations.fromJson(json.decode(response.body));
    }
  } catch (e) {
    print(e);
  }

  return Locations.fromJson(
    json.decode(
      await rootBundle.loadString('assets/locations.json'),
    ),
  );
}
