//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GrantIn {
  /// Returns a new [GrantIn] instance.
  GrantIn({
    this.amountCents,
    this.currency,
    this.org,
    this.reason,
    this.source_,
    this.user,
  });

  /// AmountCents is the credit, in whole cents. Must be positive and within the per-grant cap.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// Currency is the ISO code, lower-cased. Empty means usd.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// Org is the tenant to credit. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Reason is the operator's justification, recorded on the audit row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Source is the money bucket: \"trial\" (default) for a non-cash comp that is never refundable, or \"prepaid\" for real money. Anything unknown falls back to trial.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// User optionally names a MEMBER to credit, by bare IAM username. Empty credits the org. Which of the two the money actually lands on is decided by account.Payer, not here: a pooled org keeps one balance whatever is named.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrantIn &&
    other.amountCents == amountCents &&
    other.currency == currency &&
    other.org == org &&
    other.reason == reason &&
    other.source_ == source_ &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'GrantIn[amountCents=$amountCents, currency=$currency, org=$org, reason=$reason, source_=$source_, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [GrantIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GrantIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GrantIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GrantIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GrantIn(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        org: mapValueOfType<String>(json, r'org'),
        reason: mapValueOfType<String>(json, r'reason'),
        source_: mapValueOfType<String>(json, r'source'),
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<GrantIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GrantIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GrantIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GrantIn> mapFromJson(dynamic json) {
    final map = <String, GrantIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GrantIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GrantIn-objects as value to a dart map
  static Map<String, List<GrantIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GrantIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GrantIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

