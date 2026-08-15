//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AnalyticsSlice {
  /// Returns a new [AnalyticsSlice] instance.
  AnalyticsSlice({
    this.hint,
    this.label,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyticsSlice &&
    other.hint == hint &&
    other.label == label &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hint == null ? 0 : hint!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'AnalyticsSlice[hint=$hint, label=$label, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hint != null) {
      json[r'hint'] = this.hint;
    } else {
      json[r'hint'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [AnalyticsSlice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyticsSlice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyticsSlice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyticsSlice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyticsSlice(
        hint: mapValueOfType<String>(json, r'hint'),
        label: mapValueOfType<String>(json, r'label'),
        value: mapValueOfType<int>(json, r'value'),
      );
    }
    return null;
  }

  static List<AnalyticsSlice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyticsSlice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyticsSlice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyticsSlice> mapFromJson(dynamic json) {
    final map = <String, AnalyticsSlice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyticsSlice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyticsSlice-objects as value to a dart map
  static Map<String, List<AnalyticsSlice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyticsSlice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyticsSlice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

