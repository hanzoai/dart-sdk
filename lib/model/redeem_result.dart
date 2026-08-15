//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RedeemResult {
  /// Returns a new [RedeemResult] instance.
  RedeemResult({
    this.alreadyRedeemed,
    this.chargeCents,
    this.discountCents,
    this.redemption,
  });

  /// AlreadyRedeemed is true when this org had already taken the promo and the call was an idempotent replay.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? alreadyRedeemed;

  /// ChargeCents is what month one costs after the discount, DiscountCents the discount that produced it. Both are quoted figures against the org's derived plan — NOTHING WAS CREDITED and no wallet moved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chargeCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Redemption? redemption;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RedeemResult &&
    other.alreadyRedeemed == alreadyRedeemed &&
    other.chargeCents == chargeCents &&
    other.discountCents == discountCents &&
    other.redemption == redemption;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alreadyRedeemed == null ? 0 : alreadyRedeemed!.hashCode) +
    (chargeCents == null ? 0 : chargeCents!.hashCode) +
    (discountCents == null ? 0 : discountCents!.hashCode) +
    (redemption == null ? 0 : redemption!.hashCode);

  @override
  String toString() => 'RedeemResult[alreadyRedeemed=$alreadyRedeemed, chargeCents=$chargeCents, discountCents=$discountCents, redemption=$redemption]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alreadyRedeemed != null) {
      json[r'alreadyRedeemed'] = this.alreadyRedeemed;
    } else {
      json[r'alreadyRedeemed'] = null;
    }
    if (this.chargeCents != null) {
      json[r'chargeCents'] = this.chargeCents;
    } else {
      json[r'chargeCents'] = null;
    }
    if (this.discountCents != null) {
      json[r'discountCents'] = this.discountCents;
    } else {
      json[r'discountCents'] = null;
    }
    if (this.redemption != null) {
      json[r'redemption'] = this.redemption;
    } else {
      json[r'redemption'] = null;
    }
    return json;
  }

  /// Returns a new [RedeemResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedeemResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RedeemResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RedeemResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedeemResult(
        alreadyRedeemed: mapValueOfType<bool>(json, r'alreadyRedeemed'),
        chargeCents: mapValueOfType<int>(json, r'chargeCents'),
        discountCents: mapValueOfType<int>(json, r'discountCents'),
        redemption: Redemption.fromJson(json[r'redemption']),
      );
    }
    return null;
  }

  static List<RedeemResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RedeemResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedeemResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedeemResult> mapFromJson(dynamic json) {
    final map = <String, RedeemResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedeemResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedeemResult-objects as value to a dart map
  static Map<String, List<RedeemResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RedeemResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedeemResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

