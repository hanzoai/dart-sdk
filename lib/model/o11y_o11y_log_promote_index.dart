//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yLogPromoteIndex {
  /// Returns a new [O11yO11yLogPromoteIndex] instance.
  O11yO11yLogPromoteIndex({
    this.fieldDataType,
    this.granularity,
    this.type,
  });

  /// FieldDataType is the path's data type, e.g. string, number, bool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldDataType;

  /// Granularity is the index granularity in rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? granularity;

  /// Type is the index type, e.g. minmax, set(N), bloom_filter(P).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yLogPromoteIndex &&
    other.fieldDataType == fieldDataType &&
    other.granularity == granularity &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldDataType == null ? 0 : fieldDataType!.hashCode) +
    (granularity == null ? 0 : granularity!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yO11yLogPromoteIndex[fieldDataType=$fieldDataType, granularity=$granularity, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fieldDataType != null) {
      json[r'fieldDataType'] = this.fieldDataType;
    } else {
      json[r'fieldDataType'] = null;
    }
    if (this.granularity != null) {
      json[r'granularity'] = this.granularity;
    } else {
      json[r'granularity'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yLogPromoteIndex] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yLogPromoteIndex? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yLogPromoteIndex[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yLogPromoteIndex[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yLogPromoteIndex(
        fieldDataType: mapValueOfType<String>(json, r'fieldDataType'),
        granularity: mapValueOfType<int>(json, r'granularity'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yO11yLogPromoteIndex> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yLogPromoteIndex>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yLogPromoteIndex.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yLogPromoteIndex> mapFromJson(dynamic json) {
    final map = <String, O11yO11yLogPromoteIndex>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yLogPromoteIndex.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yLogPromoteIndex-objects as value to a dart map
  static Map<String, List<O11yO11yLogPromoteIndex>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yLogPromoteIndex>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yLogPromoteIndex.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

