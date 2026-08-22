//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricAttribute {
  /// Returns a new [O11yO11yMetricAttribute] instance.
  O11yO11yMetricAttribute({
    this.key,
    this.valueCount,
    this.values = const [],
  });
  /// Key is the attribute's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// ValueCount is how many distinct values the attribute has.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? valueCount;

  /// Values are the attribute's distinct values.
  List<String> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricAttribute &&
    other.key == key &&
    other.valueCount == valueCount &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (valueCount == null ? 0 : valueCount!.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'O11yO11yMetricAttribute[key=$key, valueCount=$valueCount, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.valueCount != null) {
      json[r'valueCount'] = this.valueCount;
    } else {
      json[r'valueCount'] = null;
    }
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [O11yO11yMetricAttribute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricAttribute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricAttribute[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricAttribute[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricAttribute(
        key: mapValueOfType<String>(json, r'key'),
        valueCount: mapValueOfType<int>(json, r'valueCount'),
        values: json[r'values'] is Iterable
            ? (json[r'values'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yO11yMetricAttribute> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricAttribute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricAttribute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricAttribute> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricAttribute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricAttribute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricAttribute-objects as value to a dart map
  static Map<String, List<O11yO11yMetricAttribute>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricAttribute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricAttribute.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

