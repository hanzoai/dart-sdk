//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminReferralView {
  /// Returns a new [AdminReferralView] instance.
  AdminReferralView({
    this.code,
    this.createdAt,
    this.id,
    this.qualifiedAt,
    this.refereeOrg,
    this.referrerOrg,
    this.status,
  });

  /// Code is the referral code the referral was recorded against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// CreatedAt is when the referral was recorded, as a Unix timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the referral's handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// QualifiedAt is when the referee first made metered spend, as a Unix timestamp; 0 while still pending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? qualifiedAt;

  /// RefereeOrg is the org that signed up with it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refereeOrg;

  /// ReferrerOrg is the org whose code was used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? referrerOrg;

  /// Status is the referral's lifecycle state: \"signup\" or \"qualified\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminReferralView &&
    other.code == code &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.qualifiedAt == qualifiedAt &&
    other.refereeOrg == refereeOrg &&
    other.referrerOrg == referrerOrg &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (qualifiedAt == null ? 0 : qualifiedAt!.hashCode) +
    (refereeOrg == null ? 0 : refereeOrg!.hashCode) +
    (referrerOrg == null ? 0 : referrerOrg!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'AdminReferralView[code=$code, createdAt=$createdAt, id=$id, qualifiedAt=$qualifiedAt, refereeOrg=$refereeOrg, referrerOrg=$referrerOrg, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.qualifiedAt != null) {
      json[r'qualifiedAt'] = this.qualifiedAt;
    } else {
      json[r'qualifiedAt'] = null;
    }
    if (this.refereeOrg != null) {
      json[r'refereeOrg'] = this.refereeOrg;
    } else {
      json[r'refereeOrg'] = null;
    }
    if (this.referrerOrg != null) {
      json[r'referrerOrg'] = this.referrerOrg;
    } else {
      json[r'referrerOrg'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [AdminReferralView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminReferralView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminReferralView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminReferralView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminReferralView(
        code: mapValueOfType<String>(json, r'code'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        qualifiedAt: mapValueOfType<int>(json, r'qualifiedAt'),
        refereeOrg: mapValueOfType<String>(json, r'refereeOrg'),
        referrerOrg: mapValueOfType<String>(json, r'referrerOrg'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<AdminReferralView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminReferralView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminReferralView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminReferralView> mapFromJson(dynamic json) {
    final map = <String, AdminReferralView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminReferralView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminReferralView-objects as value to a dart map
  static Map<String, List<AdminReferralView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminReferralView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminReferralView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

