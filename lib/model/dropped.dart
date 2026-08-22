//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Dropped {
  /// Returns a new [Dropped] instance.
  Dropped({
    this.deleted,
    this.id,
    this.kind,
  });
  /// Deleted is always true; a record that was not there is a 404 instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// ID is the record removed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the section.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Dropped &&
    other.deleted == deleted &&
    other.id == id &&
    other.kind == kind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deleted == null ? 0 : deleted!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode);

  @override
  String toString() => 'Dropped[deleted=$deleted, id=$id, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    return json;
  }

  /// Returns a new [Dropped] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Dropped? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Dropped[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Dropped[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Dropped(
        deleted: mapValueOfType<bool>(json, r'deleted'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
      );
    }
    return null;
  }

  static List<Dropped> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Dropped>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Dropped.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Dropped> mapFromJson(dynamic json) {
    final map = <String, Dropped>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Dropped.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Dropped-objects as value to a dart map
  static Map<String, List<Dropped>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Dropped>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Dropped.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

