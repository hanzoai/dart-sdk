//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubjectReq {
  /// Returns a new [SubjectReq] instance.
  SubjectReq({
    this.email,
    this.kind,
    this.name,
    this.ref,
  });
  /// Email is the subject's contact email, sealed at rest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Kind is the party type: \"individual\" (KYC) or \"business\" (KYB).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the subject's name, sealed at rest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Ref is the org's own opaque external id for this subject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubjectReq &&
    other.email == email &&
    other.kind == kind &&
    other.name == name &&
    other.ref == ref;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ref == null ? 0 : ref!.hashCode);

  @override
  String toString() => 'SubjectReq[email=$email, kind=$kind, name=$name, ref=$ref]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    return json;
  }

  /// Returns a new [SubjectReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubjectReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubjectReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubjectReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubjectReq(
        email: mapValueOfType<String>(json, r'email'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        ref: mapValueOfType<String>(json, r'ref'),
      );
    }
    return null;
  }

  static List<SubjectReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubjectReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubjectReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubjectReq> mapFromJson(dynamic json) {
    final map = <String, SubjectReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubjectReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubjectReq-objects as value to a dart map
  static Map<String, List<SubjectReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubjectReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubjectReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

