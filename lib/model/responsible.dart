//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Responsible {
  /// Returns a new [Responsible] instance.
  Responsible({
    this.country,
    this.email,
    this.name,
    this.usTaxId,
  });
  /// Country is where they reside, ISO 3166-1 alpha-2.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// Email reaches them for signature.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Name is their full legal name as the IRS will hold it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// USTaxID reports that they hold an SSN or ITIN. It is a BOOLEAN on purpose: the number itself is never needed here and a field that could hold it is a field that will eventually be logged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? usTaxId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Responsible &&
    other.country == country &&
    other.email == email &&
    other.name == name &&
    other.usTaxId == usTaxId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (country == null ? 0 : country!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (usTaxId == null ? 0 : usTaxId!.hashCode);

  @override
  String toString() => 'Responsible[country=$country, email=$email, name=$name, usTaxId=$usTaxId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
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
    if (this.usTaxId != null) {
      json[r'usTaxId'] = this.usTaxId;
    } else {
      json[r'usTaxId'] = null;
    }
    return json;
  }

  /// Returns a new [Responsible] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Responsible? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Responsible[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Responsible[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Responsible(
        country: mapValueOfType<String>(json, r'country'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        usTaxId: mapValueOfType<bool>(json, r'usTaxId'),
      );
    }
    return null;
  }

  static List<Responsible> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Responsible>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Responsible.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Responsible> mapFromJson(dynamic json) {
    final map = <String, Responsible>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Responsible.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Responsible-objects as value to a dart map
  static Map<String, List<Responsible>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Responsible>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Responsible.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

