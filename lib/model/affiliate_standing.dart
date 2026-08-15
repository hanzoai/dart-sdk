//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AffiliateStanding {
  /// Returns a new [AffiliateStanding] instance.
  AffiliateStanding({
    this.accruedCents,
    this.code,
    this.defaultRateBps,
    this.handle,
    this.id,
    this.isAffiliate,
    this.link,
    this.marginBps,
    this.paidCents,
    this.payouts = const [],
    this.pendingCents,
    this.rateBps,
    this.referredCount,
    this.requestedCode,
    this.status,
  });

  /// AccruedCents is lifetime commission accrued, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Code is the minted referral code; empty until staff approve.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// DefaultRateBps is the direct rate a new affiliate would get, answered only to a caller that has not applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultRateBps;

  /// Handle is the opt-in public leaderboard name; empty means opted out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// ID is the affiliate's server-minted handle, \"aff_\"-prefixed — what staff approve, suspend, re-rate and pay against. Absent until the org applies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IsAffiliate says whether the caller org has an affiliate record at all. It is the ONE field an org that never applied gets besides defaultRateBps: on false, read nothing else here — every other field is absent, not zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAffiliate;

  /// Link is the shareable ?aff URL; empty until a code is minted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

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

  /// Payouts is the payout history, newest rows bounded.
  List<Remittance> payouts;

  /// PendingCents is accrued minus paid — what the platform still owes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pendingCents;

  /// RateBps is the affiliate's own direct commission rate, in basis points.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateBps;

  /// ReferredCount is how many orgs this affiliate has referred.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? referredCount;

  /// RequestedCode is the vanity code asked for at apply time — a request, not an allocation. Approval mints `code`, which may be a different slug if this one was already taken.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestedCode;

  /// Status is \"applied\", \"approved\" or \"suspended\". Only an approved affiliate has a code that resolves for attribution and accrues commission; suspended keeps what it already earned but stops earning more.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateStanding &&
    other.accruedCents == accruedCents &&
    other.code == code &&
    other.defaultRateBps == defaultRateBps &&
    other.handle == handle &&
    other.id == id &&
    other.isAffiliate == isAffiliate &&
    other.link == link &&
    other.marginBps == marginBps &&
    other.paidCents == paidCents &&
    _deepEquality.equals(other.payouts, payouts) &&
    other.pendingCents == pendingCents &&
    other.rateBps == rateBps &&
    other.referredCount == referredCount &&
    other.requestedCode == requestedCode &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (defaultRateBps == null ? 0 : defaultRateBps!.hashCode) +
    (handle == null ? 0 : handle!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isAffiliate == null ? 0 : isAffiliate!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (marginBps == null ? 0 : marginBps!.hashCode) +
    (paidCents == null ? 0 : paidCents!.hashCode) +
    (payouts.hashCode) +
    (pendingCents == null ? 0 : pendingCents!.hashCode) +
    (rateBps == null ? 0 : rateBps!.hashCode) +
    (referredCount == null ? 0 : referredCount!.hashCode) +
    (requestedCode == null ? 0 : requestedCode!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'AffiliateStanding[accruedCents=$accruedCents, code=$code, defaultRateBps=$defaultRateBps, handle=$handle, id=$id, isAffiliate=$isAffiliate, link=$link, marginBps=$marginBps, paidCents=$paidCents, payouts=$payouts, pendingCents=$pendingCents, rateBps=$rateBps, referredCount=$referredCount, requestedCode=$requestedCode, status=$status]';

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
    return json;
  }

  /// Returns a new [AffiliateStanding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateStanding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AffiliateStanding[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AffiliateStanding[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AffiliateStanding(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        code: mapValueOfType<String>(json, r'code'),
        defaultRateBps: mapValueOfType<int>(json, r'defaultRateBps'),
        handle: mapValueOfType<String>(json, r'handle'),
        id: mapValueOfType<String>(json, r'id'),
        isAffiliate: mapValueOfType<bool>(json, r'isAffiliate'),
        link: mapValueOfType<String>(json, r'link'),
        marginBps: mapValueOfType<int>(json, r'marginBps'),
        paidCents: mapValueOfType<int>(json, r'paidCents'),
        payouts: Remittance.listFromJson(json[r'payouts']),
        pendingCents: mapValueOfType<int>(json, r'pendingCents'),
        rateBps: mapValueOfType<int>(json, r'rateBps'),
        referredCount: mapValueOfType<int>(json, r'referredCount'),
        requestedCode: mapValueOfType<String>(json, r'requestedCode'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<AffiliateStanding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateStanding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateStanding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateStanding> mapFromJson(dynamic json) {
    final map = <String, AffiliateStanding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateStanding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateStanding-objects as value to a dart map
  static Map<String, List<AffiliateStanding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateStanding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateStanding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

