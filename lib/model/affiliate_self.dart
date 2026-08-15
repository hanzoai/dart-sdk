//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AffiliateSelf {
  /// Returns a new [AffiliateSelf] instance.
  AffiliateSelf({
    this.accruedCents,
    this.code,
    this.defaultRateBps,
    this.downlineTotal,
    this.handle,
    this.id,
    this.isAffiliate,
    this.levels = const [],
    this.link,
    this.marginBps,
    this.paidCents,
    this.payouts = const [],
    this.pendingCents,
    this.rateBps,
    this.schedule = const [],
    this.status,
  });

  /// AccruedCents is lifetime commission accrued, in cents. It only grows — a payout is recorded against paidCents and never reduces this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Code is the minted referral code, the slug the ?aff link carries. Absent until staff approve; codes live in ONE global namespace across all affiliates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// DefaultRateBps is the direct rate a new affiliate starts at, in basis points of margin (2000 = 20%). Answered ONLY to a caller that has not applied, as the quote beside `schedule`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultRateBps;

  /// DownlineTotal counts every org in the caller's downline across the levels.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? downlineTotal;

  /// Handle is the opt-in public leaderboard name. Empty means opted out: the caller keeps its rank and still sees its own row, it is just not listed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// ID is the affiliate's server-minted handle, \"aff_\"-prefixed. Absent until the org applies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IsAffiliate says whether the caller org has an affiliate record. On false the answer carries the rate SCHEDULE and the default rate instead of a downline, so the console can show what the caller would earn.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAffiliate;

  /// Levels is the caller's downline per upline level, with the rate paid there.
  List<LevelView> levels;

  /// Link is the shareable ?aff URL built from the code. Empty until a code is minted, since there is nothing to share before approval.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// MarginBps is the platform gross-margin fraction, in basis points, that every rate here is a rate OF. Read live per request, so it is the value in force now, not the one that applied to commission already accrued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? marginBps;

  /// PaidCents is lifetime commission already paid out, in cents — credits grants and record-only cash disbursements alike.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? paidCents;

  /// Payouts is the payout history, newest first, bounded to the last 100 rows.
  List<Remittance> payouts;

  /// PendingCents is accrued minus paid, in cents — what the platform still owes and the ceiling on the next payout. Never negative.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// RateBps is the caller's OWN direct (level 1) commission rate, in basis points of margin. Levels 2 and 3 are platform-wide and appear in `levels`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateBps;

  /// Schedule is the rate schedule quoted to a caller that has not applied.
  List<LevelView> schedule;

  /// Status is \"applied\", \"approved\" or \"suspended\"; absent for a caller that never applied. Only \"approved\" mints links and accrues.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateSelf &&
    other.accruedCents == accruedCents &&
    other.code == code &&
    other.defaultRateBps == defaultRateBps &&
    other.downlineTotal == downlineTotal &&
    other.handle == handle &&
    other.id == id &&
    other.isAffiliate == isAffiliate &&
    _deepEquality.equals(other.levels, levels) &&
    other.link == link &&
    other.marginBps == marginBps &&
    other.paidCents == paidCents &&
    _deepEquality.equals(other.payouts, payouts) &&
    other.pendingCents == pendingCents &&
    other.rateBps == rateBps &&
    _deepEquality.equals(other.schedule, schedule) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (defaultRateBps == null ? 0 : defaultRateBps!.hashCode) +
    (downlineTotal == null ? 0 : downlineTotal!.hashCode) +
    (handle == null ? 0 : handle!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isAffiliate == null ? 0 : isAffiliate!.hashCode) +
    (levels.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (marginBps == null ? 0 : marginBps!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (payouts.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (rateBps == null ? 0 : rateBps!.hashCode) +
    (schedule.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'AffiliateSelf[accruedCents=$accruedCents, code=$code, defaultRateBps=$defaultRateBps, downlineTotal=$downlineTotal, handle=$handle, id=$id, isAffiliate=$isAffiliate, levels=$levels, link=$link, marginBps=$marginBps, paidCents=$paidCents, payouts=$payouts, pendingCents=$pendingCents, rateBps=$rateBps, schedule=$schedule, status=$status]';

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
    if (this.defaultRateBps != null) {
      json[r'defaultRateBps'] = this.defaultRateBps;
    } else {
      json[r'defaultRateBps'] = null;
    }
    if (this.downlineTotal != null) {
      json[r'downlineTotal'] = this.downlineTotal;
    } else {
      json[r'downlineTotal'] = null;
    }
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isAffiliate != null) {
      json[r'isAffiliate'] = this.isAffiliate;
    } else {
      json[r'isAffiliate'] = null;
    }
      json[r'levels'] = this.levels;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
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
      json[r'payouts'] = this.payouts;
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
      json[r'schedule'] = this.schedule;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliateSelf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateSelf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AffiliateSelf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AffiliateSelf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AffiliateSelf(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        code: mapValueOfType<String>(json, r'code'),
        defaultRateBps: mapValueOfType<int>(json, r'defaultRateBps'),
        downlineTotal: mapValueOfType<int>(json, r'downlineTotal'),
        handle: mapValueOfType<String>(json, r'handle'),
        id: mapValueOfType<String>(json, r'id'),
        isAffiliate: mapValueOfType<bool>(json, r'isAffiliate'),
        levels: LevelView.listFromJson(json[r'levels']),
        link: mapValueOfType<String>(json, r'link'),
        marginBps: mapValueOfType<int>(json, r'marginBps'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        payouts: Remittance.listFromJson(json[r'payouts']),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        rateBps: mapValueOfType<int>(json, r'rateBps'),
        schedule: LevelView.listFromJson(json[r'schedule']),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<AffiliateSelf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateSelf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateSelf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateSelf> mapFromJson(dynamic json) {
    final map = <String, AffiliateSelf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateSelf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateSelf-objects as value to a dart map
  static Map<String, List<AffiliateSelf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateSelf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateSelf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

