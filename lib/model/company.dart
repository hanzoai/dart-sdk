//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Company {
  /// Returns a new [Company] instance.
  Company({
    this.arr,
    this.city,
    this.country,
    this.createdAt,
    this.currency,
    this.domainName,
    this.employees,
    this.id,
    this.idealCustomerProfile,
    this.linkedinLink,
    this.name,
    this.updatedAt,
    this.xLink,
  });

  /// ARR is annual recurring revenue in minor units (cents) of Currency.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arr;

  /// City is the head-office city.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// Country is the head-office country.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// CreatedAt is the unix second the company was created. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Currency is the ISO code ARR is denominated in; a write that names none stores USD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// DomainName is the company's primary domain, e.g. \"acme.com\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainName;

  /// Employees is the headcount.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? employees;

  /// ID is the server-minted company id (\"comp_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ICP marks the company as an ideal-customer-profile fit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? idealCustomerProfile;

  /// Linkedin is the company's LinkedIn URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkedinLink;

  /// Name is the company name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UpdatedAt is the unix second of the last write. Server-owned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// XLink is the company's X (Twitter) URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? xLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Company &&
    other.arr == arr &&
    other.city == city &&
    other.country == country &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.domainName == domainName &&
    other.employees == employees &&
    other.id == id &&
    other.idealCustomerProfile == idealCustomerProfile &&
    other.linkedinLink == linkedinLink &&
    other.name == name &&
    other.updatedAt == updatedAt &&
    other.xLink == xLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arr == null ? 0 : arr!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (domainName == null ? 0 : domainName!.hashCode) +
    (employees == null ? 0 : employees!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idealCustomerProfile == null ? 0 : idealCustomerProfile!.hashCode) +
    (linkedinLink == null ? 0 : linkedinLink!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (xLink == null ? 0 : xLink!.hashCode);

  @override
  String toString() => 'Company[arr=$arr, city=$city, country=$country, createdAt=$createdAt, currency=$currency, domainName=$domainName, employees=$employees, id=$id, idealCustomerProfile=$idealCustomerProfile, linkedinLink=$linkedinLink, name=$name, updatedAt=$updatedAt, xLink=$xLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arr != null) {
      json[r'arr'] = this.arr;
    } else {
      json[r'arr'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.domainName != null) {
      json[r'domainName'] = this.domainName;
    } else {
      json[r'domainName'] = null;
    }
    if (this.employees != null) {
      json[r'employees'] = this.employees;
    } else {
      json[r'employees'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idealCustomerProfile != null) {
      json[r'idealCustomerProfile'] = this.idealCustomerProfile;
    } else {
      json[r'idealCustomerProfile'] = null;
    }
    if (this.linkedinLink != null) {
      json[r'linkedinLink'] = this.linkedinLink;
    } else {
      json[r'linkedinLink'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.xLink != null) {
      json[r'xLink'] = this.xLink;
    } else {
      json[r'xLink'] = null;
    }
    return json;
  }

  /// Returns a new [Company] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Company? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Company[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Company[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Company(
        arr: mapValueOfType<int>(json, r'arr'),
        city: mapValueOfType<String>(json, r'city'),
        country: mapValueOfType<String>(json, r'country'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        domainName: mapValueOfType<String>(json, r'domainName'),
        employees: mapValueOfType<int>(json, r'employees'),
        id: mapValueOfType<String>(json, r'id'),
        idealCustomerProfile: mapValueOfType<bool>(json, r'idealCustomerProfile'),
        linkedinLink: mapValueOfType<String>(json, r'linkedinLink'),
        name: mapValueOfType<String>(json, r'name'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        xLink: mapValueOfType<String>(json, r'xLink'),
      );
    }
    return null;
  }

  static List<Company> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Company>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Company.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Company> mapFromJson(dynamic json) {
    final map = <String, Company>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Company.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Company-objects as value to a dart map
  static Map<String, List<Company>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Company>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Company.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

