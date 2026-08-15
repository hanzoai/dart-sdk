//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GrantRow {
  /// Returns a new [GrantRow] instance.
  GrantRow({
    this.actor,
    this.amountCents,
    this.createdAt,
    this.currency,
    this.org,
    this.reason,
    this.result,
    this.source_,
    this.transactionId,
  });

  /// staff email (or sub) who issued it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// success | error
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? result;

  /// \"trial\" | \"prepaid\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrantRow &&
    other.actor == actor &&
    other.amountCents == amountCents &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.org == org &&
    other.reason == reason &&
    other.result == result &&
    other.source_ == source_ &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode);

  @override
  String toString() => 'GrantRow[actor=$actor, amountCents=$amountCents, createdAt=$createdAt, currency=$currency, org=$org, reason=$reason, result=$result, source_=$source_, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    return json;
  }

  /// Returns a new [GrantRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GrantRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GrantRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GrantRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GrantRow(
        actor: mapValueOfType<String>(json, r'actor'),
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        org: mapValueOfType<String>(json, r'org'),
        reason: mapValueOfType<String>(json, r'reason'),
        result: mapValueOfType<String>(json, r'result'),
        source_: mapValueOfType<String>(json, r'source'),
        transactionId: mapValueOfType<String>(json, r'transactionId'),
      );
    }
    return null;
  }

  static List<GrantRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GrantRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GrantRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GrantRow> mapFromJson(dynamic json) {
    final map = <String, GrantRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GrantRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GrantRow-objects as value to a dart map
  static Map<String, List<GrantRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GrantRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GrantRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

