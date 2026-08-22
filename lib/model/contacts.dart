//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Contacts {
  /// Returns a new [Contacts] instance.
  Contacts({
    this.admin,
    this.billing,
    this.registrant,
    this.tech,
  });
  /// who administers it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Registrant? admin;

  /// who is reached about payment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Registrant? billing;

  /// who owns the domain
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Registrant? registrant;

  /// who is reached about technical matters
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Registrant? tech;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Contacts &&
    other.admin == admin &&
    other.billing == billing &&
    other.registrant == registrant &&
    other.tech == tech;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin == null ? 0 : admin!.hashCode) +
    (billing == null ? 0 : billing!.hashCode) +
    (registrant == null ? 0 : registrant!.hashCode) +
    (tech == null ? 0 : tech!.hashCode);

  @override
  String toString() => 'Contacts[admin=$admin, billing=$billing, registrant=$registrant, tech=$tech]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    if (this.billing != null) {
      json[r'billing'] = this.billing;
    } else {
      json[r'billing'] = null;
    }
    if (this.registrant != null) {
      json[r'registrant'] = this.registrant;
    } else {
      json[r'registrant'] = null;
    }
    if (this.tech != null) {
      json[r'tech'] = this.tech;
    } else {
      json[r'tech'] = null;
    }
    return json;
  }

  /// Returns a new [Contacts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Contacts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Contacts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Contacts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Contacts(
        admin: Registrant.fromJson(json[r'admin']),
        billing: Registrant.fromJson(json[r'billing']),
        registrant: Registrant.fromJson(json[r'registrant']),
        tech: Registrant.fromJson(json[r'tech']),
      );
    }
    return null;
  }

  static List<Contacts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Contacts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Contacts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Contacts> mapFromJson(dynamic json) {
    final map = <String, Contacts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Contacts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Contacts-objects as value to a dart map
  static Map<String, List<Contacts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Contacts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Contacts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

