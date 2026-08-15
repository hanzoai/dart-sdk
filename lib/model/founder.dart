//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Founder {
  /// Returns a new [Founder] instance.
  Founder({
    this.decidedBy,
    this.email,
    this.equityBps,
    this.kycRef,
    this.kycStatus,
    this.name,
  });

  /// DecidedBy is who settled a terminal KYC status: the provider name, or a reviewer's user id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decidedBy;

  /// Email is the founder's email, and the key a KYC decision addresses a founder by — POST /v1/company/kyc/decision matches on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// EquityBps is the founder's ownership in basis points, 0–10000 (1% == 100 bps, so 10000 is the whole company). The founders' shares seed the cap-table genesis.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? equityBps;

  /// KYCRef is the idv provider's session reference for this founder.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kycRef;

  /// KYCStatus is the founder's identity-verification state: pending, verified (a real idv provider reported a pass), reviewer_confirmed (a privileged reviewer confirmed out-of-band) or failed. The payment stage is unreachable until every founder passes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kycStatus;

  /// Name is the founder's full legal name, as it appears on the formation documents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Founder &&
    other.decidedBy == decidedBy &&
    other.email == email &&
    other.equityBps == equityBps &&
    other.kycRef == kycRef &&
    other.kycStatus == kycStatus &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (decidedBy == null ? 0 : decidedBy!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (equityBps == null ? 0 : equityBps!.hashCode) +
    (kycRef == null ? 0 : kycRef!.hashCode) +
    (kycStatus == null ? 0 : kycStatus!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'Founder[decidedBy=$decidedBy, email=$email, equityBps=$equityBps, kycRef=$kycRef, kycStatus=$kycStatus, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.decidedBy != null) {
      json[r'decidedBy'] = this.decidedBy;
    } else {
      json[r'decidedBy'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.equityBps != null) {
      json[r'equityBps'] = this.equityBps;
    } else {
      json[r'equityBps'] = null;
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
    return json;
  }

  /// Returns a new [Founder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Founder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Founder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Founder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Founder(
        decidedBy: mapValueOfType<String>(json, r'decidedBy'),
        email: mapValueOfType<String>(json, r'email'),
        equityBps: mapValueOfType<int>(json, r'equityBps'),
        kycRef: mapValueOfType<String>(json, r'kycRef'),
        kycStatus: mapValueOfType<String>(json, r'kycStatus'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<Founder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Founder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Founder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Founder> mapFromJson(dynamic json) {
    final map = <String, Founder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Founder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Founder-objects as value to a dart map
  static Map<String, List<Founder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Founder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Founder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

