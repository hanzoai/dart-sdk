//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Waiting {
  /// Returns a new [Waiting] instance.
  Waiting({
    this.email,
    this.founder,
    this.kycRef,
    this.kycStatus,
    this.name,
    this.org,
    this.since,
  });

  /// Email is the founder's email — the key a decision is posted against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Founder is the founder's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? founder;

  /// KYCRef is the identity-verification session reference, when one was opened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kycRef;

  /// KYCStatus is the founder's unsettled status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kycStatus;

  /// Name is the proposed company name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the tenant whose formation the founder belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Since is when the formation was last touched, as a unix second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? since;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Waiting &&
    other.email == email &&
    other.founder == founder &&
    other.kycRef == kycRef &&
    other.kycStatus == kycStatus &&
    other.name == name &&
    other.org == org &&
    other.since == since;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (founder == null ? 0 : founder!.hashCode) +
    (kycRef == null ? 0 : kycRef!.hashCode) +
    (kycStatus == null ? 0 : kycStatus!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (since == null ? 0 : since!.hashCode);

  @override
  String toString() => 'Waiting[email=$email, founder=$founder, kycRef=$kycRef, kycStatus=$kycStatus, name=$name, org=$org, since=$since]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.founder != null) {
      json[r'founder'] = this.founder;
    } else {
      json[r'founder'] = null;
    }
    if (this.kycRef != null) {
      json[r'kycRef'] = this.kycRef;
    } else {
      json[r'kycRef'] = null;
    }
    if (this.kycStatus != null) {
      json[r'kycStatus'] = this.kycStatus;
    } else {
      json[r'kycStatus'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since;
    } else {
      json[r'since'] = null;
    }
    return json;
  }

  /// Returns a new [Waiting] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Waiting? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Waiting[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Waiting[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Waiting(
        email: mapValueOfType<String>(json, r'email'),
        founder: mapValueOfType<String>(json, r'founder'),
        kycRef: mapValueOfType<String>(json, r'kycRef'),
        kycStatus: mapValueOfType<String>(json, r'kycStatus'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        since: mapValueOfType<int>(json, r'since'),
      );
    }
    return null;
  }

  static List<Waiting> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Waiting>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Waiting.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Waiting> mapFromJson(dynamic json) {
    final map = <String, Waiting>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Waiting.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Waiting-objects as value to a dart map
  static Map<String, List<Waiting>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Waiting>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Waiting.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

