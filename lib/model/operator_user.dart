//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OperatorUser {
  /// Returns a new [OperatorUser] instance.
  OperatorUser({
    this.created,
    this.displayName,
    this.email,
    this.forbidden,
    this.isAdmin,
    this.isSuperAdmin,
    this.lastSignin,
    this.name,
    this.owner,
    this.tag,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

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
  bool? forbidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAdmin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSuperAdmin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSignin;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OperatorUser &&
    other.created == created &&
    other.displayName == displayName &&
    other.email == email &&
    other.forbidden == forbidden &&
    other.isAdmin == isAdmin &&
    other.isSuperAdmin == isSuperAdmin &&
    other.lastSignin == lastSignin &&
    other.name == name &&
    other.owner == owner &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (forbidden == null ? 0 : forbidden!.hashCode) +
    (isAdmin == null ? 0 : isAdmin!.hashCode) +
    (isSuperAdmin == null ? 0 : isSuperAdmin!.hashCode) +
    (lastSignin == null ? 0 : lastSignin!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (tag == null ? 0 : tag!.hashCode);

  @override
  String toString() => 'OperatorUser[created=$created, displayName=$displayName, email=$email, forbidden=$forbidden, isAdmin=$isAdmin, isSuperAdmin=$isSuperAdmin, lastSignin=$lastSignin, name=$name, owner=$owner, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.forbidden != null) {
      json[r'forbidden'] = this.forbidden;
    } else {
      json[r'forbidden'] = null;
    }
    if (this.isAdmin != null) {
      json[r'isAdmin'] = this.isAdmin;
    } else {
      json[r'isAdmin'] = null;
    }
    if (this.isSuperAdmin != null) {
      json[r'isSuperAdmin'] = this.isSuperAdmin;
    } else {
      json[r'isSuperAdmin'] = null;
    }
    if (this.lastSignin != null) {
      json[r'lastSignin'] = this.lastSignin;
    } else {
      json[r'lastSignin'] = null;
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
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    return json;
  }

  /// Returns a new [OperatorUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OperatorUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OperatorUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OperatorUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OperatorUser(
        created: mapValueOfType<String>(json, r'created'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        email: mapValueOfType<String>(json, r'email'),
        forbidden: mapValueOfType<bool>(json, r'forbidden'),
        isAdmin: mapValueOfType<bool>(json, r'isAdmin'),
        isSuperAdmin: mapValueOfType<bool>(json, r'isSuperAdmin'),
        lastSignin: mapValueOfType<String>(json, r'lastSignin'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<OperatorUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperatorUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperatorUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OperatorUser> mapFromJson(dynamic json) {
    final map = <String, OperatorUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OperatorUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OperatorUser-objects as value to a dart map
  static Map<String, List<OperatorUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OperatorUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OperatorUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

