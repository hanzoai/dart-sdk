//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySeries {
  /// Returns a new [O11ySeries] instance.
  O11ySeries({
    this.labels = const {},
    this.labelsArray = const [],
    this.values = const [],
  });
  Map<String, String> labels;

  List<Map<String, String>> labelsArray;

  List<Object> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySeries &&
    _deepEquality.equals(other.labels, labels) &&
    _deepEquality.equals(other.labelsArray, labelsArray) &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (labelsArray.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'O11ySeries[labels=$labels, labelsArray=$labelsArray, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
      json[r'labelsArray'] = this.labelsArray;
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [O11ySeries] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySeries? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySeries[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySeries[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySeries(
        labels: mapCastOfType<String, String>(json, r'labels') ?? const {},
        labelsArray: json[r'labelsArray'] is Iterable
            ? (json[r'labelsArray'] as Iterable).map((e) => (e as Map).cast<String, String>()).toList(growable: false)
            : const [],
        values: json[r'values'] is Iterable
            ? (json[r'values'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11ySeries> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySeries>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySeries.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySeries> mapFromJson(dynamic json) {
    final map = <String, O11ySeries>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySeries.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySeries-objects as value to a dart map
  static Map<String, List<O11ySeries>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySeries>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySeries.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

