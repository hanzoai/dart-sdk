//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AdminAuthorView {
  /// Returns a new [AdminAuthorView] instance.
  AdminAuthorView({
    this.accruedCents,
    this.approvedAt,
    this.createdAt,
    this.deployCount,
    this.githubLogin,
    this.id,
    this.org,
    this.paidCents,
    this.pendingCents,
    this.repoCount,
    this.shareBps,
    this.status,
    this.suspendedAt,
    this.verified,
  });

  /// AccruedCents is lifetime royalty accrued, in integer USD cents: the sum of every latched accrual (spend × shareBps / 10000). It only ever rises — a payout is recorded against paidCents and never reduces this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// ApprovedAt is unix seconds of the first approval, and 0 means never approved — which is also \"has never been able to accrue\". Re-approving to renegotiate the share leaves it at the original date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? approvedAt;

  /// CreatedAt is unix seconds at the FIRST connect. Re-connecting re-links the login and leaves this alone, so it dates the enrolment, not the latest link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DeployCount is how many attribution edges point at this author — one per (repository, project, deploying org), so re-deploying the same project adds none. It includes self-deploys, which are recorded for provenance and excluded from accrual, so it measures reach, not the earning set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deployCount;

  /// GithubLogin is the linked forge account, lowercased. It comes from IAM's linked account when the connect had one — which is also what sets verified — and otherwise from the login the caller declared. The treasury author carries \"<brand>-maintainers\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? githubLogin;

  /// ID is the author record's server-minted handle, \"aut_\"-prefixed. It is the id the approve, suspend, payout and admin-basis routes address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Org is the tenant org that owns this author record — UNIQUE, one author per org. It is exposed HERE and nowhere else (Author.Org is json:\"-\" on the tenant surface), and it is the org excluded from this author's own accrual: deploying your own repo earns you nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// PaidCents is lifetime royalty RECORDED as paid, in integer USD cents. It rises the moment a payout reserves against pending — recording, not settling; a human moves the money out of band — and falls back only when a payout is voided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// PendingCents is what a payout may still draw against — accrued − paid, floored at zero. It is derived for each response, never stored, and it is the exact figure the atomic payout guard refuses to exceed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// RepoCount is how many of this author's repository claims are VERIFIED, counted for this response in one GROUP BY over the whole table rather than a query per row. The single-author replies from approve, suspend and payout report 0: they carry the mutated row, not a re-listing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? repoCount;

  /// ShareBps is the royalty rate accrual applies, in basis points of a deploying org's metered spend for the period: 2000 (the platform default) is 20%, 10000 would be the entire spend. The platform keeps 10000 − shareBps. Changing it never rewrites history — each ledger row keeps the rate it was written with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shareBps;

  /// Status is connected, approved or suspended. Only an approved author accrues; a connected one may verify repos and collect deploy edges but earns nothing until a reviewer admits it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SuspendedAt is unix seconds of the most recent suspension. 0 means the author is not suspended: either never was, or was and has since been approved again, which clears this back to 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suspendedAt;

  /// Verified is IDENTITY proof of the login, NOT proof of any repository: true when the connect took the login from IAM's linked forge account (and for the seeded treasury author), false when the caller merely declared it. A false here still earns — repository ownership is proven separately, per claim.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminAuthorView &&
    other.accruedCents == accruedCents &&
    other.approvedAt == approvedAt &&
    other.createdAt == createdAt &&
    other.deployCount == deployCount &&
    other.githubLogin == githubLogin &&
    other.id == id &&
    other.org == org &&
    other.paidCents == paidCents &&
    other.pendingCents == pendingCents &&
    other.repoCount == repoCount &&
    other.shareBps == shareBps &&
    other.status == status &&
    other.suspendedAt == suspendedAt &&
    other.verified == verified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (approvedAt == null ? 0 : approvedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (deployCount == null ? 0 : deployCount!.hashCode) +
    (githubLogin == null ? 0 : githubLogin!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (repoCount == null ? 0 : repoCount!.hashCode) +
    (shareBps == null ? 0 : shareBps!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (suspendedAt == null ? 0 : suspendedAt!.hashCode) +
    (verified == null ? 0 : verified!.hashCode);

  @override
  String toString() => 'AdminAuthorView[accruedCents=$accruedCents, approvedAt=$approvedAt, createdAt=$createdAt, deployCount=$deployCount, githubLogin=$githubLogin, id=$id, org=$org, paidCents=$paidCents, pendingCents=$pendingCents, repoCount=$repoCount, shareBps=$shareBps, status=$status, suspendedAt=$suspendedAt, verified=$verified]';

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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.deployCount != null) {
      json[r'deployCount'] = this.deployCount;
    } else {
      json[r'deployCount'] = null;
    }
    if (this.githubLogin != null) {
      json[r'githubLogin'] = this.githubLogin;
    } else {
      json[r'githubLogin'] = null;
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
    if (this.repoCount != null) {
      json[r'repoCount'] = this.repoCount;
    } else {
      json[r'repoCount'] = null;
    }
    if (this.shareBps != null) {
      json[r'shareBps'] = this.shareBps;
    } else {
      json[r'shareBps'] = null;
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
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    return json;
  }

  /// Returns a new [AdminAuthorView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminAuthorView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminAuthorView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminAuthorView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminAuthorView(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        approvedAt: mapValueOfType<int>(json, r'approvedAt'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        deployCount: mapValueOfType<int>(json, r'deployCount'),
        githubLogin: mapValueOfType<String>(json, r'githubLogin'),
        id: mapValueOfType<String>(json, r'id'),
        org: mapValueOfType<String>(json, r'org'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        repoCount: mapValueOfType<int>(json, r'repoCount'),
        shareBps: mapValueOfType<int>(json, r'shareBps'),
        status: mapValueOfType<String>(json, r'status'),
        suspendedAt: mapValueOfType<int>(json, r'suspendedAt'),
        verified: mapValueOfType<bool>(json, r'verified'),
      );
    }
    return null;
  }

  static List<AdminAuthorView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminAuthorView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminAuthorView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminAuthorView> mapFromJson(dynamic json) {
    final map = <String, AdminAuthorView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminAuthorView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminAuthorView-objects as value to a dart map
  static Map<String, List<AdminAuthorView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminAuthorView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminAuthorView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

