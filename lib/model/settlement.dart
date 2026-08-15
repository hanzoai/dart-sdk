//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Settlement {
  /// Returns a new [Settlement] instance.
  Settlement({
    this.affiliate,
    this.payout,
  });

  /// Affiliate is the row re-read AFTER the payout, so its paidCents and pendingCents already account for the row beside it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminAffiliateView? affiliate;

  /// Payout is the payout row just recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Remittance? payout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Settlement &&
    other.affiliate == affiliate &&
    other.payout == payout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affiliate == null ? 0 : affiliate!.hashCode) +
    (payout == null ? 0 : payout!.hashCode);

  @override
  String toString() => 'Settlement[affiliate=$affiliate, payout=$payout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affiliate != null) {
      json[r'affiliate'] = this.affiliate;
    } else {
      json[r'affiliate'] = null;
    }
    if (this.payout != null) {
      json[r'payout'] = this.payout;
    } else {
      json[r'payout'] = null;
    }
    return json;
  }

  /// Returns a new [Settlement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Settlement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Settlement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Settlement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Settlement(
        affiliate: AdminAffiliateView.fromJson(json[r'affiliate']),
        payout: Remittance.fromJson(json[r'payout']),
      );
    }
    return null;
  }

  static List<Settlement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Settlement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Settlement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Settlement> mapFromJson(dynamic json) {
    final map = <String, Settlement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Settlement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Settlement-objects as value to a dart map
  static Map<String, List<Settlement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Settlement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Settlement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

