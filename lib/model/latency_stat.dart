//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LatencyStat {
  /// Returns a new [LatencyStat] instance.
  LatencyStat({
    this.available,
    this.p50Ms,
    this.p95Ms,
    this.p99Ms,
  });
  /// false when no GenAI spans carry timing; the percentiles are then null
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// median latency over the window
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p50Ms;

  /// 95th-percentile latency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p95Ms;

  /// 99th-percentile latency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p99Ms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LatencyStat &&
    other.available == available &&
    other.p50Ms == p50Ms &&
    other.p95Ms == p95Ms &&
    other.p99Ms == p99Ms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (p50Ms == null ? 0 : p50Ms!.hashCode) +
    (p95Ms == null ? 0 : p95Ms!.hashCode) +
    (p99Ms == null ? 0 : p99Ms!.hashCode);

  @override
  String toString() => 'LatencyStat[available=$available, p50Ms=$p50Ms, p95Ms=$p95Ms, p99Ms=$p99Ms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.p50Ms != null) {
      json[r'p50Ms'] = this.p50Ms;
    } else {
      json[r'p50Ms'] = null;
    }
    if (this.p95Ms != null) {
      json[r'p95Ms'] = this.p95Ms;
    } else {
      json[r'p95Ms'] = null;
    }
    if (this.p99Ms != null) {
      json[r'p99Ms'] = this.p99Ms;
    } else {
      json[r'p99Ms'] = null;
    }
    return json;
  }

  /// Returns a new [LatencyStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LatencyStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LatencyStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LatencyStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LatencyStat(
        available: mapValueOfType<bool>(json, r'available'),
        p50Ms: mapValueOfType<double>(json, r'p50Ms'),
        p95Ms: mapValueOfType<double>(json, r'p95Ms'),
        p99Ms: mapValueOfType<double>(json, r'p99Ms'),
      );
    }
    return null;
  }

  static List<LatencyStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LatencyStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LatencyStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LatencyStat> mapFromJson(dynamic json) {
    final map = <String, LatencyStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LatencyStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LatencyStat-objects as value to a dart map
  static Map<String, List<LatencyStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LatencyStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LatencyStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

