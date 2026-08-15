//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminAffiliateView {
  /// Returns a new [AdminAffiliateView] instance.
  AdminAffiliateView({
    this.accruedCents,
    this.approvedAt,
    this.code,
    this.createdAt,
    this.id,
    this.org,
    this.paidCents,
    this.pendingCents,
    this.rateBps,
    this.referredCount,
    this.requestedCode,
    this.status,
    this.suspendedAt,
  });

  /// AccruedCents is lifetime commission accrued, in cents. It only grows — a payout moves paidCents, never this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// ApprovedAt is when staff approved, Unix seconds UTC. 0 means never approved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? approvedAt;

  /// Code is the minted referral code, the slug the ?aff link carries. Empty until approval mints it. Codes are one global namespace across all affiliates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// CreatedAt is when the org applied, Unix seconds UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the affiliate's server-minted handle, \"aff_\"-prefixed — the id the approve, suspend, rate and payout routes address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Org is the partner's own org slug. It appears ONLY on this cross-tenant admin view; no partner-facing read ever names another org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// PaidCents is lifetime commission already paid out, in cents — credits grants and record-only cash disbursements alike.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// PendingCents is accrued minus paid, in cents: what is still owed, and the hard ceiling the next payout is reserved against. Never negative.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// RateBps is this affiliate's DIRECT (level 1) commission rate in basis points OF Hanzo's margin (2000 = 20% of margin, never of the customer's bill). Levels 2 and 3 are platform-wide switches and are not carried per affiliate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateBps;

  /// ReferredCount is how many orgs this affiliate is the DIRECT referrer of, counted from the attribution edges. It is 0 on the single-affiliate answers (approve, suspend, rate, payout), which do not run the count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? referredCount;

  /// RequestedCode is the vanity code the applicant asked for. A request, not an allocation: approval mints a different slug if this one was taken. Absent when none was asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestedCode;

  /// Status is \"applied\", \"approved\" or \"suspended\". Only \"approved\" resolves for attribution and accrues; \"suspended\" stops future earning and claws nothing back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SuspendedAt is when staff suspended, Unix seconds UTC. 0 means never suspended; it is not cleared by a later re-approval.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suspendedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminAffiliateView &&
    other.accruedCents == accruedCents &&
    other.approvedAt == approvedAt &&
    other.code == code &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.org == org &&
    other.paidCents == paidCents &&
    other.pendingCents == pendingCents &&
    other.rateBps == rateBps &&
    other.referredCount == referredCount &&
    other.requestedCode == requestedCode &&
    other.status == status &&
    other.suspendedAt == suspendedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (approvedAt == null ? 0 : approvedAt!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (rateBps == null ? 0 : rateBps!.hashCode) +
    (referredCount == null ? 0 : referredCount!.hashCode) +
    (requestedCode == null ? 0 : requestedCode!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (suspendedAt == null ? 0 : suspendedAt!.hashCode);

  @override
  String toString() => 'AdminAffiliateView[accruedCents=$accruedCents, approvedAt=$approvedAt, code=$code, createdAt=$createdAt, id=$id, org=$org, paidCents=$paidCents, pendingCents=$pendingCents, rateBps=$rateBps, referredCount=$referredCount, requestedCode=$requestedCode, status=$status, suspendedAt=$suspendedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
    if (this.approvedAt != null) {
      json[r'approvedAt'] = this.approvedAt;
    } else {
      json[r'approvedAt'] = null;
    }
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
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.paidCents != null) {
      json[r'paidCents'] = this.paidCents;
    } else {
      json[r'paidCents'] = null;
    }
    if (this.pendingCents != null) {
      json[r'pendingCents'] = this.pendingCents;
    } else {
      json[r'pendingCents'] = null;
    }
    if (this.rateBps != null) {
      json[r'rateBps'] = this.rateBps;
    } else {
      json[r'rateBps'] = null;
    }
    if (this.referredCount != null) {
      json[r'referredCount'] = this.referredCount;
    } else {
      json[r'referredCount'] = null;
    }
    if (this.requestedCode != null) {
      json[r'requestedCode'] = this.requestedCode;
    } else {
      json[r'requestedCode'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.suspendedAt != null) {
      json[r'suspendedAt'] = this.suspendedAt;
    } else {
      json[r'suspendedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AdminAffiliateView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminAffiliateView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminAffiliateView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminAffiliateView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminAffiliateView(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        approvedAt: mapValueOfType<int>(json, r'approvedAt'),
        code: mapValueOfType<String>(json, r'code'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        org: mapValueOfType<String>(json, r'org'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        rateBps: mapValueOfType<int>(json, r'rateBps'),
        referredCount: mapValueOfType<int>(json, r'referredCount'),
        requestedCode: mapValueOfType<String>(json, r'requestedCode'),
        status: mapValueOfType<String>(json, r'status'),
        suspendedAt: mapValueOfType<int>(json, r'suspendedAt'),
      );
    }
    return null;
  }

  static List<AdminAffiliateView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminAffiliateView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminAffiliateView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminAffiliateView> mapFromJson(dynamic json) {
    final map = <String, AdminAffiliateView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminAffiliateView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminAffiliateView-objects as value to a dart map
  static Map<String, List<AdminAffiliateView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminAffiliateView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminAffiliateView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

