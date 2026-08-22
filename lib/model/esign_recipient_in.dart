//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignRecipientIn {
  /// Returns a new [EsignRecipientIn] instance.
  EsignRecipientIn({
    this.email,
    this.name,
    this.role,
    this.signingOrder,
  });
  Object? email;

  Object? name;

  Object? role;

  Object? signingOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignRecipientIn &&
    other.email == email &&
    other.name == name &&
    other.role == role &&
    other.signingOrder == signingOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (signingOrder == null ? 0 : signingOrder!.hashCode);

  @override
  String toString() => 'EsignRecipientIn[email=$email, name=$name, role=$role, signingOrder=$signingOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.signingOrder != null) {
      json[r'signingOrder'] = this.signingOrder;
    } else {
      json[r'signingOrder'] = null;
    }
    return json;
  }

  /// Returns a new [EsignRecipientIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignRecipientIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignRecipientIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignRecipientIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignRecipientIn(
        email: mapValueOfType<Object>(json, r'email'),
        name: mapValueOfType<Object>(json, r'name'),
        role: mapValueOfType<Object>(json, r'role'),
        signingOrder: mapValueOfType<Object>(json, r'signingOrder'),
      );
    }
    return null;
  }

  static List<EsignRecipientIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignRecipientIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignRecipientIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignRecipientIn> mapFromJson(dynamic json) {
    final map = <String, EsignRecipientIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignRecipientIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignRecipientIn-objects as value to a dart map
  static Map<String, List<EsignRecipientIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignRecipientIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignRecipientIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

