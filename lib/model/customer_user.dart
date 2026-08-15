//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CustomerUser {
  /// Returns a new [CustomerUser] instance.
  CustomerUser({
    this.created,
    this.email,
    this.forbidden,
    this.hasApiKey,
    this.isAdmin,
    this.lastSignin,
    this.name,
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
  bool? hasApiKey;

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
  String? lastSignin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerUser &&
    other.created == created &&
    other.email == email &&
    other.forbidden == forbidden &&
    other.hasApiKey == hasApiKey &&
    other.isAdmin == isAdmin &&
    other.lastSignin == lastSignin &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (forbidden == null ? 0 : forbidden!.hashCode) +
    (hasApiKey == null ? 0 : hasApiKey!.hashCode) +
    (isAdmin == null ? 0 : isAdmin!.hashCode) +
    (lastSignin == null ? 0 : lastSignin!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'CustomerUser[created=$created, email=$email, forbidden=$forbidden, hasApiKey=$hasApiKey, isAdmin=$isAdmin, lastSignin=$lastSignin, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
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
    if (this.hasApiKey != null) {
      json[r'hasApiKey'] = this.hasApiKey;
    } else {
      json[r'hasApiKey'] = null;
    }
    if (this.isAdmin != null) {
      json[r'isAdmin'] = this.isAdmin;
    } else {
      json[r'isAdmin'] = null;
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
    return json;
  }

  /// Returns a new [CustomerUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerUser(
        created: mapValueOfType<String>(json, r'created'),
        email: mapValueOfType<String>(json, r'email'),
        forbidden: mapValueOfType<bool>(json, r'forbidden'),
        hasApiKey: mapValueOfType<bool>(json, r'hasApiKey'),
        isAdmin: mapValueOfType<bool>(json, r'isAdmin'),
        lastSignin: mapValueOfType<String>(json, r'lastSignin'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<CustomerUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerUser> mapFromJson(dynamic json) {
    final map = <String, CustomerUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerUser-objects as value to a dart map
  static Map<String, List<CustomerUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

