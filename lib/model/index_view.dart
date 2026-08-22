//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexView {
  /// Returns a new [IndexView] instance.
  IndexView({
    this.createdAt,
    this.primaryKey,
    this.uid,
    this.updatedAt,
  });
  /// CreatedAt is when this org first created the index, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// PrimaryKey is the document field that identifies a row; an upsert is keyed on it. Empty until a document establishes one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? primaryKey;

  /// UID is the index's name within the org. Two orgs may both hold `messages`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uid;

  /// UpdatedAt is when the index or its settings last changed, RFC 3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexView &&
    other.createdAt == createdAt &&
    other.primaryKey == primaryKey &&
    other.uid == uid &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (primaryKey == null ? 0 : primaryKey!.hashCode) +
    (uid == null ? 0 : uid!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'IndexView[createdAt=$createdAt, primaryKey=$primaryKey, uid=$uid, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.primaryKey != null) {
      json[r'primaryKey'] = this.primaryKey;
    } else {
      json[r'primaryKey'] = null;
    }
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [IndexView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        primaryKey: mapValueOfType<String>(json, r'primaryKey'),
        uid: mapValueOfType<String>(json, r'uid'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<IndexView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexView> mapFromJson(dynamic json) {
    final map = <String, IndexView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexView-objects as value to a dart map
  static Map<String, List<IndexView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

