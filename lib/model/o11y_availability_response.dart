//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAvailabilityResponse {
  /// Returns a new [O11yAvailabilityResponse] instance.
  O11yAvailabilityResponse({
    this.range,
    this.series = const [],
    this.services = const [],
    this.total,
    this.up,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAvailabilityResponseRange? range;

  /// Series is the trend, oldest bucket first.
  List<O11yAvailabilityPoint> series;

  /// Services is the current inventory, sorted by name so two reads of an unchanged fleet are byte-identical.
  List<O11yServiceUp> services;

  /// Total is how many services the prober currently watches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Up is how many services are up right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? up;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAvailabilityResponse &&
    other.range == range &&
    _deepEquality.equals(other.series, series) &&
    _deepEquality.equals(other.services, services) &&
    other.total == total &&
    other.up == up;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (range == null ? 0 : range!.hashCode) +
    (series.hashCode) +
    (services.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (up == null ? 0 : up!.hashCode);

  @override
  String toString() => 'O11yAvailabilityResponse[range=$range, series=$series, services=$services, total=$total, up=$up]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
      json[r'series'] = this.series;
      json[r'services'] = this.services;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.up != null) {
      json[r'up'] = this.up;
    } else {
      json[r'up'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAvailabilityResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAvailabilityResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAvailabilityResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAvailabilityResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAvailabilityResponse(
        range: O11yAvailabilityResponseRange.fromJson(json[r'range']),
        series: O11yAvailabilityPoint.listFromJson(json[r'series']),
        services: O11yServiceUp.listFromJson(json[r'services']),
        total: mapValueOfType<int>(json, r'total'),
        up: mapValueOfType<int>(json, r'up'),
      );
    }
    return null;
  }

  static List<O11yAvailabilityResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAvailabilityResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAvailabilityResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAvailabilityResponse> mapFromJson(dynamic json) {
    final map = <String, O11yAvailabilityResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAvailabilityResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAvailabilityResponse-objects as value to a dart map
  static Map<String, List<O11yAvailabilityResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAvailabilityResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAvailabilityResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

