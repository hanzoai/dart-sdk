//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AccreditationReq {
  /// Returns a new [AccreditationReq] instance.
  AccreditationReq({
    this.basis,
    this.evidenceDocId,
    this.expiresAt,
    this.method,
    this.note,
    this.status,
    this.subjectId,
  });

  /// Basis is the qualification category: income, net_worth, professional_license, or entity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? basis;

  /// EvidenceDocID references an evidence document in the org's sealed data room.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evidenceDocId;

  /// ExpiresAt is the unix second a confirmation ages out; 0 means none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// Method is how the state was established: self_attested, third_party_letter, or provider_verified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Note is a non-PII operator note.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Status may only be \"asserted\" (empty reads as asserted); every confirmed, rejected or expired state is recorded via the decision endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SubjectID names the subject this record is about; it must exist within the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccreditationReq &&
    other.basis == basis &&
    other.evidenceDocId == evidenceDocId &&
    other.expiresAt == expiresAt &&
    other.method == method &&
    other.note == note &&
    other.status == status &&
    other.subjectId == subjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (basis == null ? 0 : basis!.hashCode) +
    (evidenceDocId == null ? 0 : evidenceDocId!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode);

  @override
  String toString() => 'AccreditationReq[basis=$basis, evidenceDocId=$evidenceDocId, expiresAt=$expiresAt, method=$method, note=$note, status=$status, subjectId=$subjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.basis != null) {
      json[r'basis'] = this.basis;
    } else {
      json[r'basis'] = null;
    }
    if (this.evidenceDocId != null) {
      json[r'evidenceDocId'] = this.evidenceDocId;
    } else {
      json[r'evidenceDocId'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.subjectId != null) {
      json[r'subjectId'] = this.subjectId;
    } else {
      json[r'subjectId'] = null;
    }
    return json;
  }

  /// Returns a new [AccreditationReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccreditationReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccreditationReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccreditationReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccreditationReq(
        basis: mapValueOfType<String>(json, r'basis'),
        evidenceDocId: mapValueOfType<String>(json, r'evidenceDocId'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        method: mapValueOfType<String>(json, r'method'),
        note: mapValueOfType<String>(json, r'note'),
        status: mapValueOfType<String>(json, r'status'),
        subjectId: mapValueOfType<String>(json, r'subjectId'),
      );
    }
    return null;
  }

  static List<AccreditationReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccreditationReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccreditationReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccreditationReq> mapFromJson(dynamic json) {
    final map = <String, AccreditationReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccreditationReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccreditationReq-objects as value to a dart map
  static Map<String, List<AccreditationReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccreditationReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccreditationReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

