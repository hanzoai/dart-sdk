//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferrerRow {
  /// Returns a new [ReferrerRow] instance.
  ReferrerRow({
    this.accruedCents,
    this.code,
    this.org,
    this.pendingCents,
    this.referredCount,
    this.status,
  });

  /// AccruedCents is lifetime commission accrued, in cents. The board is sorted by this, descending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Code is that affiliate's minted referral code; empty if it is not approved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Org is the partner's own org slug. Named only here, on the SuperAdmin board — the partner-facing leaderboard shows an opt-in handle and never an org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// PendingCents is accrued minus paid, in cents — what is still owed to this affiliate. Never negative.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// ReferredCount is how many orgs this affiliate is the DIRECT referrer of — its level-1 downline, not the whole three-level chain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? referredCount;

  /// Status is \"applied\", \"approved\" or \"suspended\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferrerRow &&
    other.accruedCents == accruedCents &&
    other.code == code &&
    other.org == org &&
    other.pendingCents == pendingCents &&
    other.referredCount == referredCount &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (referredCount == null ? 0 : referredCount!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ReferrerRow[accruedCents=$accruedCents, code=$code, org=$org, pendingCents=$pendingCents, referredCount=$referredCount, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.pendingCents != null) {
      json[r'pendingCents'] = this.pendingCents;
    } else {
      json[r'pendingCents'] = null;
    }
    if (this.referredCount != null) {
      json[r'referredCount'] = this.referredCount;
    } else {
      json[r'referredCount'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ReferrerRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferrerRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferrerRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferrerRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferrerRow(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        code: mapValueOfType<String>(json, r'code'),
        org: mapValueOfType<String>(json, r'org'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        referredCount: mapValueOfType<int>(json, r'referredCount'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ReferrerRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferrerRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferrerRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferrerRow> mapFromJson(dynamic json) {
    final map = <String, ReferrerRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferrerRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferrerRow-objects as value to a dart map
  static Map<String, List<ReferrerRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferrerRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferrerRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

