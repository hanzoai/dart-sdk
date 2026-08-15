//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableStakeholder {
  /// Returns a new [CaptableStakeholder] instance.
  CaptableStakeholder({
    this.city,
    this.companyName,
    this.country,
    this.createdAt,
    this.currentRelationship,
    this.email,
    this.id,
    this.institutionName,
    this.name,
    this.stakeholderType,
    this.state,
    this.streetAddress,
    this.taxId,
    this.zipcode,
  });

  /// City is the stakeholder's city, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// CompanyName is the name of the company whose cap table this is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  /// Country is the stakeholder's two-letter country code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// CreatedAt is when the stakeholder was added, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// CurrentRelationship is how the stakeholder relates to the company, e.g. FOUNDER, INVESTOR or EMPLOYEE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentRelationship;

  /// Email is the stakeholder's email, unique within the company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the stakeholder id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// InstitutionName names the institution, when the stakeholder is one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? institutionName;

  /// Name is the stakeholder's full name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// StakeholderType is INDIVIDUAL or INSTITUTION.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stakeholderType;

  /// State is the stakeholder's state or province, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// StreetAddress is the stakeholder's street address, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? streetAddress;

  /// TaxID is the stakeholder's tax identifier, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taxId;

  /// Zipcode is the stakeholder's postal code, if recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zipcode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableStakeholder &&
    other.city == city &&
    other.companyName == companyName &&
    other.country == country &&
    other.createdAt == createdAt &&
    other.currentRelationship == currentRelationship &&
    other.email == email &&
    other.id == id &&
    other.institutionName == institutionName &&
    other.name == name &&
    other.stakeholderType == stakeholderType &&
    other.state == state &&
    other.streetAddress == streetAddress &&
    other.taxId == taxId &&
    other.zipcode == zipcode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (city == null ? 0 : city!.hashCode) +
    (companyName == null ? 0 : companyName!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currentRelationship == null ? 0 : currentRelationship!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (institutionName == null ? 0 : institutionName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (stakeholderType == null ? 0 : stakeholderType!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (streetAddress == null ? 0 : streetAddress!.hashCode) +
    (taxId == null ? 0 : taxId!.hashCode) +
    (zipcode == null ? 0 : zipcode!.hashCode);

  @override
  String toString() => 'CaptableStakeholder[city=$city, companyName=$companyName, country=$country, createdAt=$createdAt, currentRelationship=$currentRelationship, email=$email, id=$id, institutionName=$institutionName, name=$name, stakeholderType=$stakeholderType, state=$state, streetAddress=$streetAddress, taxId=$taxId, zipcode=$zipcode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currentRelationship != null) {
      json[r'currentRelationship'] = this.currentRelationship;
    } else {
      json[r'currentRelationship'] = null;
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
    if (this.institutionName != null) {
      json[r'institutionName'] = this.institutionName;
    } else {
      json[r'institutionName'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.stakeholderType != null) {
      json[r'stakeholderType'] = this.stakeholderType;
    } else {
      json[r'stakeholderType'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.streetAddress != null) {
      json[r'streetAddress'] = this.streetAddress;
    } else {
      json[r'streetAddress'] = null;
    }
    if (this.taxId != null) {
      json[r'taxId'] = this.taxId;
    } else {
      json[r'taxId'] = null;
    }
    if (this.zipcode != null) {
      json[r'zipcode'] = this.zipcode;
    } else {
      json[r'zipcode'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableStakeholder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableStakeholder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableStakeholder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableStakeholder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableStakeholder(
        city: mapValueOfType<String>(json, r'city'),
        companyName: mapValueOfType<String>(json, r'companyName'),
        country: mapValueOfType<String>(json, r'country'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        currentRelationship: mapValueOfType<String>(json, r'currentRelationship'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        institutionName: mapValueOfType<String>(json, r'institutionName'),
        name: mapValueOfType<String>(json, r'name'),
        stakeholderType: mapValueOfType<String>(json, r'stakeholderType'),
        state: mapValueOfType<String>(json, r'state'),
        streetAddress: mapValueOfType<String>(json, r'streetAddress'),
        taxId: mapValueOfType<String>(json, r'taxId'),
        zipcode: mapValueOfType<String>(json, r'zipcode'),
      );
    }
    return null;
  }

  static List<CaptableStakeholder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableStakeholder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableStakeholder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableStakeholder> mapFromJson(dynamic json) {
    final map = <String, CaptableStakeholder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableStakeholder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableStakeholder-objects as value to a dart map
  static Map<String, List<CaptableStakeholder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableStakeholder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableStakeholder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

