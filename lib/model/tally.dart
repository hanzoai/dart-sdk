//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Tally {
  /// Returns a new [Tally] instance.
  Tally({
    this.accruedLifetimeCents,
    this.affiliates,
    this.approved,
    this.paidLifetimeCents,
    this.pendingLiabilityCents,
  });

  /// AccruedLifetimeCents is all commission ever accrued, summed across every affiliate, in cents. It only grows; a payout does not reduce it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedLifetimeCents;

  /// Affiliates is how many affiliate rows the board read, at every status. The read is bounded at 1000 rows, so a larger fleet reports the bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? affiliates;

  /// Approved is how many of those rows are approved — the only ones whose code resolves for attribution and whose balance can grow.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? approved;

  /// PaidLifetimeCents is all commission ever paid out, in cents: credits grants plus record-only cash disbursements.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidLifetimeCents;

  /// PendingLiabilityCents is accrued minus paid across every affiliate, in cents. Read it as money OWED and not yet disbursed — a liability, not spend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingLiabilityCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tally &&
    other.accruedLifetimeCents == accruedLifetimeCents &&
    other.affiliates == affiliates &&
    other.approved == approved &&
    other.paidLifetimeCents == paidLifetimeCents &&
    other.pendingLiabilityCents == pendingLiabilityCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedLifetimeCents == null ? 0 : accruedLifetimeCents!.hashCode) +
    (affiliates == null ? 0 : affiliates!.hashCode) +
    (approved == null ? 0 : approved!.hashCode) +
    (paidLifetimeCents == null ? 0 : paidLifetimeCents!.hashCode) +
    (pendingLiabilityCents == null ? 0 : pendingLiabilityCents!.hashCode);

  @override
  String toString() => 'Tally[accruedLifetimeCents=$accruedLifetimeCents, affiliates=$affiliates, approved=$approved, paidLifetimeCents=$paidLifetimeCents, pendingLiabilityCents=$pendingLiabilityCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedLifetimeCents != null) {
      json[r'accruedLifetimeCents'] = this.accruedLifetimeCents;
    } else {
      json[r'accruedLifetimeCents'] = null;
    }
    if (this.affiliates != null) {
      json[r'affiliates'] = this.affiliates;
    } else {
      json[r'affiliates'] = null;
    }
    if (this.approved != null) {
      json[r'approved'] = this.approved;
    } else {
      json[r'approved'] = null;
    }
    if (this.paidLifetimeCents != null) {
      json[r'paidLifetimeCents'] = this.paidLifetimeCents;
    } else {
      json[r'paidLifetimeCents'] = null;
    }
    if (this.pendingLiabilityCents != null) {
      json[r'pendingLiabilityCents'] = this.pendingLiabilityCents;
    } else {
      json[r'pendingLiabilityCents'] = null;
    }
    return json;
  }

  /// Returns a new [Tally] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tally? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tally[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tally[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tally(
        accruedLifetimeCents: mapValueOfType<int>(json, r'accruedLifetimeCents'),
        affiliates: mapValueOfType<int>(json, r'affiliates'),
        approved: mapValueOfType<int>(json, r'approved'),
        paidLifetimeCents: mapValueOfType<int>(json, r'paidLifetimeCents'),
        pendingLiabilityCents: mapValueOfType<int>(json, r'pendingLiabilityCents'),
      );
    }
    return null;
  }

  static List<Tally> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tally>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tally.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tally> mapFromJson(dynamic json) {
    final map = <String, Tally>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tally.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tally-objects as value to a dart map
  static Map<String, List<Tally>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tally>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tally.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

