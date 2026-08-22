//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignEvent {
  /// Returns a new [EsignEvent] instance.
  EsignEvent({
    this.createdAt,
    this.data,
    this.email,
    this.id,
    this.name,
    this.type,
  });
  /// CreatedAt is when it happened, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  Object? data;

  /// Email is the email of whoever caused it, null for an event with no actor — the sender's own calls are recorded without one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the entry id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the name of whoever caused it, null when it was not recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Type is what happened: DOCUMENT_CREATED, RECIPIENT_CREATED, FIELD_CREATED, DOCUMENT_SENT, DOCUMENT_OPENED, DOCUMENT_FIELD_INSERTED, DOCUMENT_RECIPIENT_COMPLETED, DOCUMENT_RECIPIENT_REJECTED or DOCUMENT_COMPLETED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignEvent &&
    other.createdAt == createdAt &&
    other.data == data &&
    other.email == email &&
    other.id == id &&
    other.name == name &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'EsignEvent[createdAt=$createdAt, data=$data, email=$email, id=$id, name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
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
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [EsignEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignEvent(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        data: mapValueOfType<Object>(json, r'data'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<EsignEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignEvent> mapFromJson(dynamic json) {
    final map = <String, EsignEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignEvent-objects as value to a dart map
  static Map<String, List<EsignEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

