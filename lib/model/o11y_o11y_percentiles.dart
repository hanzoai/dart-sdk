//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPercentiles {
  /// Returns a new [O11yO11yPercentiles] instance.
  O11yO11yPercentiles({
    this.p50,
    this.p90,
    this.p99,
  });

  /// P50 is the median.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p50;

  /// P90 is the 90th percentile.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p90;

  /// P99 is the 99th percentile.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p99;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPercentiles &&
    other.p50 == p50 &&
    other.p90 == p90 &&
    other.p99 == p99;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (p50 == null ? 0 : p50!.hashCode) +
    (p90 == null ? 0 : p90!.hashCode) +
    (p99 == null ? 0 : p99!.hashCode);

  @override
  String toString() => 'O11yO11yPercentiles[p50=$p50, p90=$p90, p99=$p99]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.p50 != null) {
      json[r'p50'] = this.p50;
    } else {
      json[r'p50'] = null;
    }
    if (this.p90 != null) {
      json[r'p90'] = this.p90;
    } else {
      json[r'p90'] = null;
    }
    if (this.p99 != null) {
      json[r'p99'] = this.p99;
    } else {
      json[r'p99'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yPercentiles] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPercentiles? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPercentiles[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPercentiles[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPercentiles(
        p50: num.parse('${json[r'p50']}'),
        p90: num.parse('${json[r'p90']}'),
        p99: num.parse('${json[r'p99']}'),
      );
    }
    return null;
  }

  static List<O11yO11yPercentiles> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPercentiles>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPercentiles.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPercentiles> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPercentiles>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPercentiles.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPercentiles-objects as value to a dart map
  static Map<String, List<O11yO11yPercentiles>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPercentiles>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPercentiles.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

