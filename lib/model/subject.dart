//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Subject {
  /// Returns a new [Subject] instance.
  Subject({
    this.createdAt,
    this.email,
    this.id,
    this.kind,
    this.name,
    this.org,
    this.ref,
    this.updatedAt,
  });
  /// CreatedAt is when the subject was first recorded, Unix SECONDS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Email is the party's address, when the org supplied one. It is PII: sealed at rest, returned only to the owning org, and never copied into a check record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// ID is the opaque handle every other record uses to point at this party. It is the only reference that leaves this type, which is what keeps the PII in one place: a check, an accreditation and an audit row all carry the id and none of them carry the name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is what is being verified: \"individual\" (a natural person, so KYC) or \"business\" (a legal entity, so KYB). It decides which provider flow runs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the party's name, under the same PII rule as Email. For a business it is the legal entity name rather than a trading name, since that is what a provider verifies against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the tenant that is doing the verifying — the party who must answer for this record, not the party being verified. A subject is returned only to it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Ref is the org's OWN identifier for this party, carried so a caller can match a subject back to their system without keeping a second mapping. Opaque here: nothing in this plane parses or enforces it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// UpdatedAt is when the subject's own fields last changed, Unix seconds. A check moving to a new status does not touch it — that history lives on the check.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Subject &&
    other.createdAt == createdAt &&
    other.email == email &&
    other.id == id &&
    other.kind == kind &&
    other.name == name &&
    other.org == org &&
    other.ref == ref &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Subject[createdAt=$createdAt, email=$email, id=$id, kind=$kind, name=$name, org=$org, ref=$ref, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Subject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Subject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Subject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Subject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Subject(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        ref: mapValueOfType<String>(json, r'ref'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<Subject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Subject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Subject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Subject> mapFromJson(dynamic json) {
    final map = <String, Subject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Subject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Subject-objects as value to a dart map
  static Map<String, List<Subject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Subject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Subject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

