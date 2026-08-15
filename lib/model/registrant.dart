//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Registrant {
  /// Returns a new [Registrant] instance.
  Registrant({
    this.address1,
    this.address2,
    this.city,
    this.companyName,
    this.country,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.phone,
    this.state,
    this.zip,
  });

  /// street address
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address1;

  /// second address line
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address2;

  /// city or locality
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// the organisation the contact acts for
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  /// ISO-3166 alpha-2, e.g. \"US\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// where WHOIS correspondence is sent
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// fax number, in the same form as phone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fax;

  /// the contact's given name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// the contact's family name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// +NN.NNNNNNN
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// state, province or region
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// postal code
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Registrant &&
    other.address1 == address1 &&
    other.address2 == address2 &&
    other.city == city &&
    other.companyName == companyName &&
    other.country == country &&
    other.email == email &&
    other.fax == fax &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.phone == phone &&
    other.state == state &&
    other.zip == zip;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address1 == null ? 0 : address1!.hashCode) +
    (address2 == null ? 0 : address2!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (companyName == null ? 0 : companyName!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (fax == null ? 0 : fax!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (zip == null ? 0 : zip!.hashCode);

  @override
  String toString() => 'Registrant[address1=$address1, address2=$address2, city=$city, companyName=$companyName, country=$country, email=$email, fax=$fax, firstName=$firstName, lastName=$lastName, phone=$phone, state=$state, zip=$zip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address1 != null) {
      json[r'address1'] = this.address1;
    } else {
      json[r'address1'] = null;
    }
    if (this.address2 != null) {
      json[r'address2'] = this.address2;
    } else {
      json[r'address2'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.companyName != null) {
      json[r'companyName'] = this.companyName;
    } else {
      json[r'companyName'] = null;
    }
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
    if (this.fax != null) {
      json[r'fax'] = this.fax;
    } else {
      json[r'fax'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.zip != null) {
      json[r'zip'] = this.zip;
    } else {
      json[r'zip'] = null;
    }
    return json;
  }

  /// Returns a new [Registrant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Registrant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Registrant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Registrant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Registrant(
        address1: mapValueOfType<String>(json, r'address1'),
        address2: mapValueOfType<String>(json, r'address2'),
        city: mapValueOfType<String>(json, r'city'),
        companyName: mapValueOfType<String>(json, r'companyName'),
        country: mapValueOfType<String>(json, r'country'),
        email: mapValueOfType<String>(json, r'email'),
        fax: mapValueOfType<String>(json, r'fax'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        phone: mapValueOfType<String>(json, r'phone'),
        state: mapValueOfType<String>(json, r'state'),
        zip: mapValueOfType<String>(json, r'zip'),
      );
    }
    return null;
  }

  static List<Registrant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Registrant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Registrant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Registrant> mapFromJson(dynamic json) {
    final map = <String, Registrant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Registrant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Registrant-objects as value to a dart map
  static Map<String, List<Registrant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Registrant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Registrant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

