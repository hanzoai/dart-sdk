//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySvcStat {
  /// Returns a new [O11ySvcStat] instance.
  O11ySvcStat({
    this.errorRate,
    this.latencyP95Ms,
    this.requests,
    this.service,
  });

  /// percent (0..100)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? errorRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyP95Ms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySvcStat &&
    other.errorRate == errorRate &&
    other.latencyP95Ms == latencyP95Ms &&
    other.requests == requests &&
    other.service == service;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (latencyP95Ms == null ? 0 : latencyP95Ms!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (service == null ? 0 : service!.hashCode);

  @override
  String toString() => 'O11ySvcStat[errorRate=$errorRate, latencyP95Ms=$latencyP95Ms, requests=$requests, service=$service]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.latencyP95Ms != null) {
      json[r'latencyP95Ms'] = this.latencyP95Ms;
    } else {
      json[r'latencyP95Ms'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySvcStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySvcStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySvcStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySvcStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySvcStat(
        errorRate: num.parse('${json[r'errorRate']}'),
        latencyP95Ms: num.parse('${json[r'latencyP95Ms']}'),
        requests: mapValueOfType<int>(json, r'requests'),
        service: mapValueOfType<String>(json, r'service'),
      );
    }
    return null;
  }

  static List<O11ySvcStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySvcStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySvcStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySvcStat> mapFromJson(dynamic json) {
    final map = <String, O11ySvcStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySvcStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySvcStat-objects as value to a dart map
  static Map<String, List<O11ySvcStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySvcStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySvcStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

