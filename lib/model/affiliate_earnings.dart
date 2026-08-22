//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AffiliateEarnings {
  /// Returns a new [AffiliateEarnings] instance.
  AffiliateEarnings({
    this.accruedCents,
    this.byPeriod = const [],
    this.byReferredOrg = const [],
    this.isAffiliate,
    this.marginBps,
    this.paidCents,
    this.pendingCents,
  });
  /// AccruedCents is lifetime commission accrued, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// ByPeriod is the per-period ledger: the margin earned against and the commission taken from it.
  List<PeriodEarningView> byPeriod;

  /// ByReferredOrg is each referral's aggregate contribution — the affiliate's OWN share, never the referred org's spend.
  List<OrgEarningView> byReferredOrg;

  /// IsAffiliate says whether the caller org has an affiliate record. On false it is the ONLY field present — there is no ledger to report, and the zeros you might expect are absent rather than reported as earnings of nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAffiliate;

  /// MarginBps is the platform gross-margin fraction commission is a rate OF.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? marginBps;

  /// PaidCents is lifetime commission already paid out, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// PendingCents is accrued minus paid — what the platform still owes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateEarnings &&
    other.accruedCents == accruedCents &&
    _deepEquality.equals(other.byPeriod, byPeriod) &&
    _deepEquality.equals(other.byReferredOrg, byReferredOrg) &&
    other.isAffiliate == isAffiliate &&
    other.marginBps == marginBps &&
    other.paidCents == paidCents &&
    other.pendingCents == pendingCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (byPeriod.hashCode) +
    (byReferredOrg.hashCode) +
    (isAffiliate == null ? 0 : isAffiliate!.hashCode) +
    (marginBps == null ? 0 : marginBps!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode);

  @override
  String toString() => 'AffiliateEarnings[accruedCents=$accruedCents, byPeriod=$byPeriod, byReferredOrg=$byReferredOrg, isAffiliate=$isAffiliate, marginBps=$marginBps, paidCents=$paidCents, pendingCents=$pendingCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
      json[r'byPeriod'] = this.byPeriod;
      json[r'byReferredOrg'] = this.byReferredOrg;
    if (this.isAffiliate != null) {
      json[r'isAffiliate'] = this.isAffiliate;
    } else {
      json[r'isAffiliate'] = null;
    }
    if (this.marginBps != null) {
      json[r'marginBps'] = this.marginBps;
    } else {
      json[r'marginBps'] = null;
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
    return json;
  }

  /// Returns a new [AffiliateEarnings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateEarnings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AffiliateEarnings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AffiliateEarnings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AffiliateEarnings(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        byPeriod: PeriodEarningView.listFromJson(json[r'byPeriod']),
        byReferredOrg: OrgEarningView.listFromJson(json[r'byReferredOrg']),
        isAffiliate: mapValueOfType<bool>(json, r'isAffiliate'),
        marginBps: mapValueOfType<int>(json, r'marginBps'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
      );
    }
    return null;
  }

  static List<AffiliateEarnings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateEarnings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateEarnings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateEarnings> mapFromJson(dynamic json) {
    final map = <String, AffiliateEarnings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateEarnings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateEarnings-objects as value to a dart map
  static Map<String, List<AffiliateEarnings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateEarnings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateEarnings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

