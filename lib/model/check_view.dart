//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CheckView {
  /// Returns a new [CheckView] instance.
  CheckView({
    this.createdAt,
    this.decidedAt,
    this.decidedBy,
    this.id,
    this.kind,
    this.provider,
    this.status,
    this.subjectId,
    this.updatedAt,
    this.verifyUrl,
  });

  /// CreatedAt is the unix second the verification was started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DecidedAt is the unix second a terminal status was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decidedAt;

  /// DecidedBy records who settled a terminal status: the provider name, or a reviewer's user id for a recorded manual decision.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? decidedBy;

  /// ID is the verification's opaque id.
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

  /// Provider is the verification provider this check runs through.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Status is the check's state: pending, provider_verified, provider_rejected, manual_review, or expired (provider-reported), or reviewer_confirmed — the one value a privileged human reviewer records, never a provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SubjectID is the opaque id of the subject under verification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectId;

  /// UpdatedAt is the unix second the verification last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// VerifyURL is the provider's hosted verification flow for the subject, when one exists.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verifyUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckView &&
    other.createdAt == createdAt &&
    other.decidedAt == decidedAt &&
    other.decidedBy == decidedBy &&
    other.id == id &&
    other.kind == kind &&
    other.provider == provider &&
    other.status == status &&
    other.subjectId == subjectId &&
    other.updatedAt == updatedAt &&
    other.verifyUrl == verifyUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (decidedAt == null ? 0 : decidedAt!.hashCode) +
    (decidedBy == null ? 0 : decidedBy!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (verifyUrl == null ? 0 : verifyUrl!.hashCode);

  @override
  String toString() => 'CheckView[createdAt=$createdAt, decidedAt=$decidedAt, decidedBy=$decidedBy, id=$id, kind=$kind, provider=$provider, status=$status, subjectId=$subjectId, updatedAt=$updatedAt, verifyUrl=$verifyUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.decidedAt != null) {
      json[r'decidedAt'] = this.decidedAt;
    } else {
      json[r'decidedAt'] = null;
    }
    if (this.decidedBy != null) {
      json[r'decidedBy'] = this.decidedBy;
    } else {
      json[r'decidedBy'] = null;
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
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
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
    if (this.verifyUrl != null) {
      json[r'verifyUrl'] = this.verifyUrl;
    } else {
      json[r'verifyUrl'] = null;
    }
    return json;
  }

  /// Returns a new [CheckView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        decidedAt: mapValueOfType<int>(json, r'decidedAt'),
        decidedBy: mapValueOfType<String>(json, r'decidedBy'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        provider: mapValueOfType<String>(json, r'provider'),
        status: mapValueOfType<String>(json, r'status'),
        subjectId: mapValueOfType<String>(json, r'subjectId'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        verifyUrl: mapValueOfType<String>(json, r'verifyUrl'),
      );
    }
    return null;
  }

  static List<CheckView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckView> mapFromJson(dynamic json) {
    final map = <String, CheckView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckView-objects as value to a dart map
  static Map<String, List<CheckView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

