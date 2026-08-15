//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DefRow {
  /// Returns a new [DefRow] instance.
  DefRow({
    this.definition,
    this.key,
    this.updatedAt,
    this.updatedBy,
    this.version,
  });

  Object? definition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DefRow &&
    other.definition == definition &&
    other.key == key &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (definition == null ? 0 : definition!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'DefRow[definition=$definition, key=$key, updatedAt=$updatedAt, updatedBy=$updatedBy, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.definition != null) {
      json[r'definition'] = this.definition;
    } else {
      json[r'definition'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updated_by'] = this.updatedBy;
    } else {
      json[r'updated_by'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [DefRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DefRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DefRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DefRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DefRow(
        definition: mapValueOfType<Object>(json, r'definition'),
        key: mapValueOfType<String>(json, r'key'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        updatedBy: mapValueOfType<String>(json, r'updated_by'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<DefRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DefRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DefRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DefRow> mapFromJson(dynamic json) {
    final map = <String, DefRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DefRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DefRow-objects as value to a dart map
  static Map<String, List<DefRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DefRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DefRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

