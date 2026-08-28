//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrafficTotals {
  /// Returns a new [TrafficTotals] instance.
  TrafficTotals({
    this.rpm60m,
    this.rps1m,
    this.topCountries = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rpm60m;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rps1m;

  List<TrafficCountryCount> topCountries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrafficTotals &&
    other.rpm60m == rpm60m &&
    other.rps1m == rps1m &&
    _deepEquality.equals(other.topCountries, topCountries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rpm60m == null ? 0 : rpm60m!.hashCode) +
    (rps1m == null ? 0 : rps1m!.hashCode) +
    (topCountries.hashCode);

  @override
  String toString() => 'TrafficTotals[rpm60m=$rpm60m, rps1m=$rps1m, topCountries=$topCountries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rpm60m != null) {
      json[r'rpm_60m'] = this.rpm60m;
    } else {
      json[r'rpm_60m'] = null;
    }
    if (this.rps1m != null) {
      json[r'rps_1m'] = this.rps1m;
    } else {
      json[r'rps_1m'] = null;
    }
      json[r'top_countries'] = this.topCountries;
    return json;
  }

  /// Returns a new [TrafficTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrafficTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrafficTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrafficTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrafficTotals(
        rpm60m: num.parse('${json[r'rpm_60m']}'),
        rps1m: num.parse('${json[r'rps_1m']}'),
        topCountries: TrafficCountryCount.listFromJson(json[r'top_countries']),
      );
    }
    return null;
  }

  static List<TrafficTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrafficTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrafficTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrafficTotals> mapFromJson(dynamic json) {
    final map = <String, TrafficTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrafficTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrafficTotals-objects as value to a dart map
  static Map<String, List<TrafficTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrafficTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrafficTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

