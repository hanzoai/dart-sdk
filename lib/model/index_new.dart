//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexNew {
  /// Returns a new [IndexNew] instance.
  IndexNew({
    this.primaryKey,
    this.uid,
  });
  /// PrimaryKey is the document field that identifies a row. Optional — the first write establishes one when it is omitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? primaryKey;

  /// UID is the index's name within the org. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexNew &&
    other.primaryKey == primaryKey &&
    other.uid == uid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (primaryKey == null ? 0 : primaryKey!.hashCode) +
    (uid == null ? 0 : uid!.hashCode);

  @override
  String toString() => 'IndexNew[primaryKey=$primaryKey, uid=$uid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [IndexNew] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexNew? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexNew[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexNew[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexNew(
        primaryKey: mapValueOfType<String>(json, r'primaryKey'),
        uid: mapValueOfType<String>(json, r'uid'),
      );
    }
    return null;
  }

  static List<IndexNew> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexNew>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexNew.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexNew> mapFromJson(dynamic json) {
    final map = <String, IndexNew>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexNew.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexNew-objects as value to a dart map
  static Map<String, List<IndexNew>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexNew>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexNew.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

