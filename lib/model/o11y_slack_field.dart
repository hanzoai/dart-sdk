//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySlackField {
  /// Returns a new [O11ySlackField] instance.
  O11ySlackField({
    this.short,
    this.title,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? short;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySlackField &&
    other.short == short &&
    other.title == title &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (short == null ? 0 : short!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11ySlackField[short=$short, title=$title, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.short != null) {
      json[r'short'] = this.short;
    } else {
      json[r'short'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySlackField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySlackField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySlackField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySlackField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySlackField(
        short: mapValueOfType<bool>(json, r'short'),
        title: mapValueOfType<String>(json, r'title'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11ySlackField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySlackField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySlackField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySlackField> mapFromJson(dynamic json) {
    final map = <String, O11ySlackField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySlackField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySlackField-objects as value to a dart map
  static Map<String, List<O11ySlackField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySlackField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySlackField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

