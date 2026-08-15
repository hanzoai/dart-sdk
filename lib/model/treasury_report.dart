//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TreasuryReport {
  /// Returns a new [TreasuryReport] instance.
  TreasuryReport({
    this.accruedCents,
    this.byProgramCents = const {},
    this.paidCents,
    this.policy,
    this.reserveCents,
    this.solventForPayout,
  });

  /// lifetime revenue-share into the fund
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// program → lifetime paid
  Map<String, int> byProgramCents;

  /// lifetime backed payouts out of the fund
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// current revenue-share policy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SharePolicy? policy;

  /// fund:reserve balance (available now)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reserveCents;

  /// reserve > 0: at least some payout is backable
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? solventForPayout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TreasuryReport &&
    other.accruedCents == accruedCents &&
    _deepEquality.equals(other.byProgramCents, byProgramCents) &&
    other.paidCents == paidCents &&
    other.policy == policy &&
    other.reserveCents == reserveCents &&
    other.solventForPayout == solventForPayout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (byProgramCents.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (policy == null ? 0 : policy!.hashCode) +
    (reserveCents == null ? 0 : reserveCents!.hashCode) +
    (solventForPayout == null ? 0 : solventForPayout!.hashCode);

  @override
  String toString() => 'TreasuryReport[accruedCents=$accruedCents, byProgramCents=$byProgramCents, paidCents=$paidCents, policy=$policy, reserveCents=$reserveCents, solventForPayout=$solventForPayout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
      json[r'byProgramCents'] = this.byProgramCents;
    if (this.paidCents != null) {
      json[r'paidCents'] = this.paidCents;
    } else {
      json[r'paidCents'] = null;
    }
    if (this.policy != null) {
      json[r'policy'] = this.policy;
    } else {
      json[r'policy'] = null;
    }
    if (this.reserveCents != null) {
      json[r'reserveCents'] = this.reserveCents;
    } else {
      json[r'reserveCents'] = null;
    }
    if (this.solventForPayout != null) {
      json[r'solventForPayout'] = this.solventForPayout;
    } else {
      json[r'solventForPayout'] = null;
    }
    return json;
  }

  /// Returns a new [TreasuryReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TreasuryReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TreasuryReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TreasuryReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TreasuryReport(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        byProgramCents: mapCastOfType<String, int>(json, r'byProgramCents') ?? const {},
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        policy: SharePolicy.fromJson(json[r'policy']),
        reserveCents: mapValueOfType<int>(json, r'reserveCents'),
        solventForPayout: mapValueOfType<bool>(json, r'solventForPayout'),
      );
    }
    return null;
  }

  static List<TreasuryReport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TreasuryReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TreasuryReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TreasuryReport> mapFromJson(dynamic json) {
    final map = <String, TreasuryReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TreasuryReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TreasuryReport-objects as value to a dart map
  static Map<String, List<TreasuryReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TreasuryReport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TreasuryReport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

