//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PromoStatus {
  /// Returns a new [PromoStatus] instance.
  PromoStatus({
    this.promo,
    this.redeemed,
    this.remaining,
  });
  /// Promo is the offer itself. It is fleet-wide, identical for every org — only the two counters beside it move.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Promo? promo;

  /// Redeemed is how many orgs have taken it, Remaining how many are left under the fleet-wide cap.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redeemed;

  /// Remaining is MaxRedemptions minus Redeemed, floored at 0. At 0 the next redeem is declined, and a quote reports ineligible rather than pricing an offer that cannot be taken.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remaining;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoStatus &&
    other.promo == promo &&
    other.redeemed == redeemed &&
    other.remaining == remaining;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (promo == null ? 0 : promo!.hashCode) +
    (redeemed == null ? 0 : redeemed!.hashCode) +
    (remaining == null ? 0 : remaining!.hashCode);

  @override
  String toString() => 'PromoStatus[promo=$promo, redeemed=$redeemed, remaining=$remaining]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.promo != null) {
      json[r'promo'] = this.promo;
    } else {
      json[r'promo'] = null;
    }
    if (this.redeemed != null) {
      json[r'redeemed'] = this.redeemed;
    } else {
      json[r'redeemed'] = null;
    }
    if (this.remaining != null) {
      json[r'remaining'] = this.remaining;
    } else {
      json[r'remaining'] = null;
    }
    return json;
  }

  /// Returns a new [PromoStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PromoStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PromoStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PromoStatus(
        promo: Promo.fromJson(json[r'promo']),
        redeemed: mapValueOfType<int>(json, r'redeemed'),
        remaining: mapValueOfType<int>(json, r'remaining'),
      );
    }
    return null;
  }

  static List<PromoStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoStatus> mapFromJson(dynamic json) {
    final map = <String, PromoStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoStatus-objects as value to a dart map
  static Map<String, List<PromoStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

