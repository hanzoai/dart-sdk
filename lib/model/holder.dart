//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Holder {
  /// Returns a new [Holder] instance.
  Holder({
    this.addedAt,
    this.email,
    this.id,
    this.role,
    this.userId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

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
  String? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Holder &&
    other.addedAt == addedAt &&
    other.email == email &&
    other.id == id &&
    other.role == role &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addedAt == null ? 0 : addedAt!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'Holder[addedAt=$addedAt, email=$email, id=$id, role=$role, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.addedAt != null) {
      json[r'addedAt'] = this.addedAt;
    } else {
      json[r'addedAt'] = null;
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
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [Holder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Holder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Holder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Holder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Holder(
        addedAt: mapValueOfType<String>(json, r'addedAt'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        role: mapValueOfType<String>(json, r'role'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<Holder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Holder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Holder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Holder> mapFromJson(dynamic json) {
    final map = <String, Holder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Holder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Holder-objects as value to a dart map
  static Map<String, List<Holder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Holder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Holder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

