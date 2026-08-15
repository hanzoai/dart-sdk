//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySpanAggregation {
  /// Returns a new [O11ySpanAggregation] instance.
  O11ySpanAggregation({
    this.aggregation,
    this.field,
  });

  Object? aggregation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTelemetryFieldKey? field;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySpanAggregation &&
    other.aggregation == aggregation &&
    other.field == field;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aggregation == null ? 0 : aggregation!.hashCode) +
    (field == null ? 0 : field!.hashCode);

  @override
  String toString() => 'O11ySpanAggregation[aggregation=$aggregation, field=$field]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aggregation != null) {
      json[r'aggregation'] = this.aggregation;
    } else {
      json[r'aggregation'] = null;
    }
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySpanAggregation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySpanAggregation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySpanAggregation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySpanAggregation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySpanAggregation(
        aggregation: mapValueOfType<Object>(json, r'aggregation'),
        field: O11yTelemetryFieldKey.fromJson(json[r'field']),
      );
    }
    return null;
  }

  static List<O11ySpanAggregation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySpanAggregation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySpanAggregation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySpanAggregation> mapFromJson(dynamic json) {
    final map = <String, O11ySpanAggregation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySpanAggregation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySpanAggregation-objects as value to a dart map
  static Map<String, List<O11ySpanAggregation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySpanAggregation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySpanAggregation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

