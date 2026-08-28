//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrafficPoint {
  /// Returns a new [TrafficPoint] instance.
  TrafficPoint({
    this.byService = const {},
    this.byTask = const {},
    this.count,
    this.country,
    this.lat,
    this.lon,
    this.region,
  });
  Map<String, int> byService;

  Map<String, int> byTask;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrafficPoint &&
    _deepEquality.equals(other.byService, byService) &&
    _deepEquality.equals(other.byTask, byTask) &&
    other.count == count &&
    other.country == country &&
    other.lat == lat &&
    other.lon == lon &&
    other.region == region;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byService.hashCode) +
    (byTask.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (lat == null ? 0 : lat!.hashCode) +
    (lon == null ? 0 : lon!.hashCode) +
    (region == null ? 0 : region!.hashCode);

  @override
  String toString() => 'TrafficPoint[byService=$byService, byTask=$byTask, count=$count, country=$country, lat=$lat, lon=$lon, region=$region]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'byService'] = this.byService;
      json[r'byTask'] = this.byTask;
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.lat != null) {
      json[r'lat'] = this.lat;
    } else {
      json[r'lat'] = null;
    }
    if (this.lon != null) {
      json[r'lon'] = this.lon;
    } else {
      json[r'lon'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    return json;
  }

  /// Returns a new [TrafficPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrafficPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrafficPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrafficPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrafficPoint(
        byService: mapCastOfType<String, int>(json, r'byService') ?? const {},
        byTask: mapCastOfType<String, int>(json, r'byTask') ?? const {},
        count: mapValueOfType<int>(json, r'count'),
        country: mapValueOfType<String>(json, r'country'),
        lat: num.parse('${json[r'lat']}'),
        lon: num.parse('${json[r'lon']}'),
        region: mapValueOfType<String>(json, r'region'),
      );
    }
    return null;
  }

  static List<TrafficPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrafficPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrafficPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrafficPoint> mapFromJson(dynamic json) {
    final map = <String, TrafficPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrafficPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrafficPoint-objects as value to a dart map
  static Map<String, List<TrafficPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrafficPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrafficPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

