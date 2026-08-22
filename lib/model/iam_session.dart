//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamSession {
  /// Returns a new [IamSession] instance.
  IamSession({
    this.application,
    this.createdAt,
    this.createdTime,
    this.deleted,
    this.exclusiveSignin,
    this.id,
    this.name,
    this.owner,
    this.sessionId = const [],
    this.updatedAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? application;

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
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  /// ExclusiveSignin is a transient control flag (v1 xorm:\"-\"): a caller sets it on a create to collapse SessionId down to the single incoming cookie instead of appending. It is never stored — a persisted session always carries it false, so orm:\"-\" keeps it off the column backends and omitempty keeps it out of the SQLite JSON blob.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? exclusiveSignin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  List<String> sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamSession &&
    other.application == application &&
    other.createdAt == createdAt &&
    other.createdTime == createdTime &&
    other.deleted == deleted &&
    other.exclusiveSignin == exclusiveSignin &&
    other.id == id &&
    other.name == name &&
    other.owner == owner &&
    _deepEquality.equals(other.sessionId, sessionId) &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (application == null ? 0 : application!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (exclusiveSignin == null ? 0 : exclusiveSignin!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (sessionId.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'IamSession[application=$application, createdAt=$createdAt, createdTime=$createdTime, deleted=$deleted, exclusiveSignin=$exclusiveSignin, id=$id, name=$name, owner=$owner, sessionId=$sessionId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
    if (this.exclusiveSignin != null) {
      json[r'exclusiveSignin'] = this.exclusiveSignin;
    } else {
      json[r'exclusiveSignin'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
      json[r'sessionId'] = this.sessionId;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [IamSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamSession(
        application: mapValueOfType<String>(json, r'application'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        exclusiveSignin: mapValueOfType<bool>(json, r'exclusiveSignin'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        sessionId: json[r'sessionId'] is Iterable
            ? (json[r'sessionId'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<IamSession> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamSession> mapFromJson(dynamic json) {
    final map = <String, IamSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamSession-objects as value to a dart map
  static Map<String, List<IamSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamSession.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

