//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GrantResult {
  /// Returns a new [GrantResult] instance.
  GrantResult({
    this.balanceCents,
    this.balanceExact,
    this.currency,
    this.grantedCents,
    this.org,
    this.source_,
    this.subject,
    this.transactionId,
  });

  /// BalanceCents is the account balance AFTER the grant, in whole cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

  /// BalanceExact is that same balance at full 18-decimal precision, so a sub-cent debit is visible rather than rounded away.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? balanceExact;

  /// Currency is the lower-cased ISO code the grant was denominated in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// GrantedCents is the amount actually credited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grantedCents;

  /// Org is the tenant whose ledger was credited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Source is the money bucket: \"trial\" (non-cash comp) or \"prepaid\" (real money).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Subject is the ACCOUNT the credit landed on inside that ledger: the org slug for a pooled org, \"<org>/<name>\" for a member of a per-member one. It is echoed because the operator does not choose it — account.Payer does — so naming a member of a pooled org credits the pool and the receipt has to say so.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// TransactionID is the ledger entry id, for reconciliation against commerce.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrantResult &&
    other.balanceCents == balanceCents &&
    other.balanceExact == balanceExact &&
    other.currency == currency &&
    other.grantedCents == grantedCents &&
    other.org == org &&
    other.source_ == source_ &&
    other.subject == subject &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (balanceExact == null ? 0 : balanceExact!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (grantedCents == null ? 0 : grantedCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'GrantResult[balanceCents=$balanceCents, balanceExact=$balanceExact, currency=$currency, grantedCents=$grantedCents, org=$org, source_=$source_, subject=$subject, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.balanceExact != null) {
      json[r'balanceExact'] = this.balanceExact;
    } else {
      json[r'balanceExact'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.grantedCents != null) {
      json[r'grantedCents'] = this.grantedCents;
    } else {
      json[r'grantedCents'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    return json;
  }

  /// Returns a new [GrantResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GrantResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GrantResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GrantResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GrantResult(
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        balanceExact: mapValueOfType<String>(json, r'balanceExact'),
        currency: mapValueOfType<String>(json, r'currency'),
        grantedCents: mapValueOfType<int>(json, r'grantedCents'),
        org: mapValueOfType<String>(json, r'org'),
        source_: mapValueOfType<String>(json, r'source'),
        subject: mapValueOfType<String>(json, r'subject'),
        transactionId: mapValueOfType<String>(json, r'transactionId'),
      );
    }
    return null;
  }

  static List<GrantResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GrantResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GrantResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GrantResult> mapFromJson(dynamic json) {
    final map = <String, GrantResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GrantResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GrantResult-objects as value to a dart map
  static Map<String, List<GrantResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GrantResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GrantResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

