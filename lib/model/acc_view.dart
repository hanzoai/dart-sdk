//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AccView {
  /// Returns a new [AccView] instance.
  AccView({
    this.basis,
    this.createdAt,
    this.evidenceDocId,
    this.expiresAt,
    this.id,
    this.method,
    this.note,
    this.reviewerSub,
    this.status,
    this.subjectId,
    this.updatedAt,
  });
  /// Basis is the qualification category: income, net_worth, professional_license, or entity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? basis;

  /// CreatedAt is the unix second the record was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

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

  /// ID is the accreditation record's opaque id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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

  /// ReviewerSub is the org user who recorded a decision on this record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reviewerSub;

  /// Status is the tracked state: asserted, provider_verified, reviewer_confirmed, rejected, or expired.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SubjectID is the opaque id of the subject the record is about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectId;

  /// UpdatedAt is the unix second the record last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccView &&
    other.basis == basis &&
    other.createdAt == createdAt &&
    other.evidenceDocId == evidenceDocId &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.method == method &&
    other.note == note &&
    other.reviewerSub == reviewerSub &&
    other.status == status &&
    other.subjectId == subjectId &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (basis == null ? 0 : basis!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (evidenceDocId == null ? 0 : evidenceDocId!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (reviewerSub == null ? 0 : reviewerSub!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AccView[basis=$basis, createdAt=$createdAt, evidenceDocId=$evidenceDocId, expiresAt=$expiresAt, id=$id, method=$method, note=$note, reviewerSub=$reviewerSub, status=$status, subjectId=$subjectId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.basis != null) {
      json[r'basis'] = this.basis;
    } else {
      json[r'basis'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.reviewerSub != null) {
      json[r'reviewerSub'] = this.reviewerSub;
    } else {
      json[r'reviewerSub'] = null;
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AccView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccView(
        basis: mapValueOfType<String>(json, r'basis'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        evidenceDocId: mapValueOfType<String>(json, r'evidenceDocId'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        id: mapValueOfType<String>(json, r'id'),
        method: mapValueOfType<String>(json, r'method'),
        note: mapValueOfType<String>(json, r'note'),
        reviewerSub: mapValueOfType<String>(json, r'reviewerSub'),
        status: mapValueOfType<String>(json, r'status'),
        subjectId: mapValueOfType<String>(json, r'subjectId'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<AccView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccView> mapFromJson(dynamic json) {
    final map = <String, AccView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccView-objects as value to a dart map
  static Map<String, List<AccView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

