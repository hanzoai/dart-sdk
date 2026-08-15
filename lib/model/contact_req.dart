//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ContactReq {
  /// Returns a new [ContactReq] instance.
  ContactReq({
    this.city,
    this.companyId,
    this.email,
    this.firstName,
    this.id,
    this.jobTitle,
    this.lastName,
    this.linkedinLink,
    this.phone,
    this.xLink,
  });

  /// City is where the person is based.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// CompanyID links the contact to one of the org's companies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyId;

  /// Email is the person's email address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// FirstName is the person's given name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// ID names the contact to update and comes from the path. A create ignores it: the server mints the id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// JobTitle is the person's role at their company.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jobTitle;

  /// LastName is the person's family name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// Linkedin is the person's LinkedIn URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkedinLink;

  /// Phone is the person's phone number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// XLink is the person's X (Twitter) URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? xLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactReq &&
    other.city == city &&
    other.companyId == companyId &&
    other.email == email &&
    other.firstName == firstName &&
    other.id == id &&
    other.jobTitle == jobTitle &&
    other.lastName == lastName &&
    other.linkedinLink == linkedinLink &&
    other.phone == phone &&
    other.xLink == xLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (city == null ? 0 : city!.hashCode) +
    (companyId == null ? 0 : companyId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (jobTitle == null ? 0 : jobTitle!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (linkedinLink == null ? 0 : linkedinLink!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (xLink == null ? 0 : xLink!.hashCode);

  @override
  String toString() => 'ContactReq[city=$city, companyId=$companyId, email=$email, firstName=$firstName, id=$id, jobTitle=$jobTitle, lastName=$lastName, linkedinLink=$linkedinLink, phone=$phone, xLink=$xLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.companyId != null) {
      json[r'companyId'] = this.companyId;
    } else {
      json[r'companyId'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.jobTitle != null) {
      json[r'jobTitle'] = this.jobTitle;
    } else {
      json[r'jobTitle'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.linkedinLink != null) {
      json[r'linkedinLink'] = this.linkedinLink;
    } else {
      json[r'linkedinLink'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.xLink != null) {
      json[r'xLink'] = this.xLink;
    } else {
      json[r'xLink'] = null;
    }
    return json;
  }

  /// Returns a new [ContactReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactReq(
        city: mapValueOfType<String>(json, r'city'),
        companyId: mapValueOfType<String>(json, r'companyId'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        id: mapValueOfType<String>(json, r'id'),
        jobTitle: mapValueOfType<String>(json, r'jobTitle'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        linkedinLink: mapValueOfType<String>(json, r'linkedinLink'),
        phone: mapValueOfType<String>(json, r'phone'),
        xLink: mapValueOfType<String>(json, r'xLink'),
      );
    }
    return null;
  }

  static List<ContactReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactReq> mapFromJson(dynamic json) {
    final map = <String, ContactReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactReq-objects as value to a dart map
  static Map<String, List<ContactReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

