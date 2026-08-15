//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yVariableItem {
  /// Returns a new [O11yVariableItem] instance.
  O11yVariableItem({
    this.type,
    this.value,
  });

  Object? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yVariableItem &&
    other.type == type &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yVariableItem[type=$type, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yVariableItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yVariableItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yVariableItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yVariableItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yVariableItem(
        type: mapValueOfType<Object>(json, r'type'),
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yVariableItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yVariableItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yVariableItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yVariableItem> mapFromJson(dynamic json) {
    final map = <String, O11yVariableItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yVariableItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yVariableItem-objects as value to a dart map
  static Map<String, List<O11yVariableItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yVariableItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yVariableItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

