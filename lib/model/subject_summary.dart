//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubjectSummary {
  /// Returns a new [SubjectSummary] instance.
  SubjectSummary({
    this.createdAt,
    this.hasEmail,
    this.id,
    this.kind,
    this.ref,
  });
  /// CreatedAt is the unix second the subject was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// HasEmail reports whether a contact email is on file, without exposing it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasEmail;

  /// ID is the subject's opaque id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the party type: \"individual\" (KYC) or \"business\" (KYB).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Ref is the org's own opaque external id for this subject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubjectSummary &&
    other.createdAt == createdAt &&
    other.hasEmail == hasEmail &&
    other.id == id &&
    other.kind == kind &&
    other.ref == ref;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (hasEmail == null ? 0 : hasEmail!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (ref == null ? 0 : ref!.hashCode);

  @override
  String toString() => 'SubjectSummary[createdAt=$createdAt, hasEmail=$hasEmail, id=$id, kind=$kind, ref=$ref]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.hasEmail != null) {
      json[r'hasEmail'] = this.hasEmail;
    } else {
      json[r'hasEmail'] = null;
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
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    return json;
  }

  /// Returns a new [SubjectSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubjectSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubjectSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubjectSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubjectSummary(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        hasEmail: mapValueOfType<bool>(json, r'hasEmail'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        ref: mapValueOfType<String>(json, r'ref'),
      );
    }
    return null;
  }

  static List<SubjectSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubjectSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubjectSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubjectSummary> mapFromJson(dynamic json) {
    final map = <String, SubjectSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubjectSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubjectSummary-objects as value to a dart map
  static Map<String, List<SubjectSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubjectSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubjectSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

