//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yTelemetryFieldValues {
  /// Returns a new [O11yTelemetryFieldValues] instance.
  O11yTelemetryFieldValues({
    this.boolValues = const [],
    this.numberValues = const [],
    this.relatedValues = const [],
    this.stringValues = const [],
  });
  List<bool> boolValues;

  List<num> numberValues;

  List<String> relatedValues;

  List<String> stringValues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yTelemetryFieldValues &&
    _deepEquality.equals(other.boolValues, boolValues) &&
    _deepEquality.equals(other.numberValues, numberValues) &&
    _deepEquality.equals(other.relatedValues, relatedValues) &&
    _deepEquality.equals(other.stringValues, stringValues);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boolValues.hashCode) +
    (numberValues.hashCode) +
    (relatedValues.hashCode) +
    (stringValues.hashCode);

  @override
  String toString() => 'O11yTelemetryFieldValues[boolValues=$boolValues, numberValues=$numberValues, relatedValues=$relatedValues, stringValues=$stringValues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'boolValues'] = this.boolValues;
      json[r'numberValues'] = this.numberValues;
      json[r'relatedValues'] = this.relatedValues;
      json[r'stringValues'] = this.stringValues;
    return json;
  }

  /// Returns a new [O11yTelemetryFieldValues] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yTelemetryFieldValues? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yTelemetryFieldValues[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yTelemetryFieldValues[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yTelemetryFieldValues(
        boolValues: json[r'boolValues'] is Iterable
            ? (json[r'boolValues'] as Iterable).cast<bool>().toList(growable: false)
            : const [],
        numberValues: json[r'numberValues'] is Iterable
            ? (json[r'numberValues'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        relatedValues: json[r'relatedValues'] is Iterable
            ? (json[r'relatedValues'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        stringValues: json[r'stringValues'] is Iterable
            ? (json[r'stringValues'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yTelemetryFieldValues> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yTelemetryFieldValues>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yTelemetryFieldValues.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yTelemetryFieldValues> mapFromJson(dynamic json) {
    final map = <String, O11yTelemetryFieldValues>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yTelemetryFieldValues.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yTelemetryFieldValues-objects as value to a dart map
  static Map<String, List<O11yTelemetryFieldValues>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yTelemetryFieldValues>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yTelemetryFieldValues.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

