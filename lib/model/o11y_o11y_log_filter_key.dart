//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogFilterKey {
  /// Returns a new [O11yO11yLogFilterKey] instance.
  O11yO11yLogFilterKey({
    this.dataType,
    this.isColumn,
    this.isJSON,
    this.key,
    this.type,
  });
  /// DataType is the field's data type, e.g. string, int64, float64, bool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataType;

  /// IsColumn marks a field materialized as its own column.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isColumn;

  /// IsJSON marks a path into the record's JSON body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isJSON;

  /// Key is the field's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Type is where the field lives: tag or resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogFilterKey &&
    other.dataType == dataType &&
    other.isColumn == isColumn &&
    other.isJSON == isJSON &&
    other.key == key &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataType == null ? 0 : dataType!.hashCode) +
    (isColumn == null ? 0 : isColumn!.hashCode) +
    (isJSON == null ? 0 : isJSON!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yO11yLogFilterKey[dataType=$dataType, isColumn=$isColumn, isJSON=$isJSON, key=$key, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataType != null) {
      json[r'dataType'] = this.dataType;
    } else {
      json[r'dataType'] = null;
    }
    if (this.isColumn != null) {
      json[r'isColumn'] = this.isColumn;
    } else {
      json[r'isColumn'] = null;
    }
    if (this.isJSON != null) {
      json[r'isJSON'] = this.isJSON;
    } else {
      json[r'isJSON'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLogFilterKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogFilterKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogFilterKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogFilterKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogFilterKey(
        dataType: mapValueOfType<String>(json, r'dataType'),
        isColumn: mapValueOfType<bool>(json, r'isColumn'),
        isJSON: mapValueOfType<bool>(json, r'isJSON'),
        key: mapValueOfType<String>(json, r'key'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yO11yLogFilterKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogFilterKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogFilterKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogFilterKey> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogFilterKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogFilterKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogFilterKey-objects as value to a dart map
  static Map<String, List<O11yO11yLogFilterKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogFilterKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogFilterKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

