//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yIngestionKey {
  /// Returns a new [O11yIngestionKey] instance.
  O11yIngestionKey({
    this.createdAt,
    this.expiresAt,
    this.id,
    this.limits = const [],
    this.name,
    this.tags = const [],
    this.updatedAt,
    this.value,
    this.workspaceId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  List<O11yLimit> limits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yIngestionKey &&
    other.createdAt == createdAt &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    _deepEquality.equals(other.limits, limits) &&
    other.name == name &&
    _deepEquality.equals(other.tags, tags) &&
    other.updatedAt == updatedAt &&
    other.value == value &&
    other.workspaceId == workspaceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (limits.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tags.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode);

  @override
  String toString() => 'O11yIngestionKey[createdAt=$createdAt, expiresAt=$expiresAt, id=$id, limits=$limits, name=$name, tags=$tags, updatedAt=$updatedAt, value=$value, workspaceId=$workspaceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'limits'] = this.limits;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
    return json;
  }

  /// Returns a new [O11yIngestionKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yIngestionKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yIngestionKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yIngestionKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yIngestionKey(
        createdAt: mapDateTime(json, r'created_at', r''),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        id: mapValueOfType<String>(json, r'id'),
        limits: O11yLimit.listFromJson(json[r'limits']),
        name: mapValueOfType<String>(json, r'name'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapDateTime(json, r'updated_at', r''),
        value: mapValueOfType<String>(json, r'value'),
        workspaceId: mapValueOfType<String>(json, r'workspace_id'),
      );
    }
    return null;
  }

  static List<O11yIngestionKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yIngestionKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yIngestionKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yIngestionKey> mapFromJson(dynamic json) {
    final map = <String, O11yIngestionKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yIngestionKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yIngestionKey-objects as value to a dart map
  static Map<String, List<O11yIngestionKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yIngestionKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yIngestionKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

