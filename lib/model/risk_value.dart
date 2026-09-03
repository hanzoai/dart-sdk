//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskValue {
  /// Returns a new [RiskValue] instance.
  RiskValue({
    this.baseline,
    this.blind,
    this.feature,
    this.observed,
    this.unit,
    this.x,
  });
  /// Baseline is what Observed was measured against: this organisation's own history for this subject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? baseline;

  /// Blind marks a coordinate that could not be computed and took its neutral value. A model silently reading neutral for a dimension it never has data for is indistinguishable from one reading a genuine absence of risk.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? blind;

  /// Feature is the dimension.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? feature;

  /// Observed is the raw number X was computed from, quoted so the coordinate reads back as a sentence rather than a bare ratio.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? observed;

  /// Unit is how to read Observed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// X is the coordinate in the model space, always dimensionless.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? x;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskValue &&
    other.baseline == baseline &&
    other.blind == blind &&
    other.feature == feature &&
    other.observed == observed &&
    other.unit == unit &&
    other.x == x;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (baseline == null ? 0 : baseline!.hashCode) +
    (blind == null ? 0 : blind!.hashCode) +
    (feature == null ? 0 : feature!.hashCode) +
    (observed == null ? 0 : observed!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (x == null ? 0 : x!.hashCode);

  @override
  String toString() => 'RiskValue[baseline=$baseline, blind=$blind, feature=$feature, observed=$observed, unit=$unit, x=$x]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.baseline != null) {
      json[r'baseline'] = this.baseline;
    } else {
      json[r'baseline'] = null;
    }
    if (this.blind != null) {
      json[r'blind'] = this.blind;
    } else {
      json[r'blind'] = null;
    }
    if (this.feature != null) {
      json[r'feature'] = this.feature;
    } else {
      json[r'feature'] = null;
    }
    if (this.observed != null) {
      json[r'observed'] = this.observed;
    } else {
      json[r'observed'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
    return json;
  }

  /// Returns a new [RiskValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskValue(
        baseline: mapValueOfType<double>(json, r'baseline'),
        blind: mapValueOfType<bool>(json, r'blind'),
        feature: mapValueOfType<String>(json, r'feature'),
        observed: mapValueOfType<double>(json, r'observed'),
        unit: mapValueOfType<String>(json, r'unit'),
        x: mapValueOfType<double>(json, r'x'),
      );
    }
    return null;
  }

  static List<RiskValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskValue> mapFromJson(dynamic json) {
    final map = <String, RiskValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskValue-objects as value to a dart map
  static Map<String, List<RiskValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

