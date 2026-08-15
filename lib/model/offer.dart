//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Offer {
  /// Returns a new [Offer] instance.
  Offer({
    this.available,
    this.currency,
    this.domain,
    this.premium,
    this.priceCents,
    this.renewalPriceCents,
    this.tld,
  });

  /// whether it can be bought right now
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// the currency both prices are in
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// the name this quote prices
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// whether the registry prices it above the standard rate
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? premium;

  /// sell (first-term registration)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priceCents;

  /// sell (renewal)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? renewalPriceCents;

  /// the top-level domain the name sits under
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tld;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Offer &&
    other.available == available &&
    other.currency == currency &&
    other.domain == domain &&
    other.premium == premium &&
    other.priceCents == priceCents &&
    other.renewalPriceCents == renewalPriceCents &&
    other.tld == tld;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (premium == null ? 0 : premium!.hashCode) +
    (priceCents == null ? 0 : priceCents!.hashCode) +
    (renewalPriceCents == null ? 0 : renewalPriceCents!.hashCode) +
    (tld == null ? 0 : tld!.hashCode);

  @override
  String toString() => 'Offer[available=$available, currency=$currency, domain=$domain, premium=$premium, priceCents=$priceCents, renewalPriceCents=$renewalPriceCents, tld=$tld]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.premium != null) {
      json[r'premium'] = this.premium;
    } else {
      json[r'premium'] = null;
    }
    if (this.priceCents != null) {
      json[r'priceCents'] = this.priceCents;
    } else {
      json[r'priceCents'] = null;
    }
    if (this.renewalPriceCents != null) {
      json[r'renewalPriceCents'] = this.renewalPriceCents;
    } else {
      json[r'renewalPriceCents'] = null;
    }
    if (this.tld != null) {
      json[r'tld'] = this.tld;
    } else {
      json[r'tld'] = null;
    }
    return json;
  }

  /// Returns a new [Offer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Offer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Offer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Offer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Offer(
        available: mapValueOfType<bool>(json, r'available'),
        currency: mapValueOfType<String>(json, r'currency'),
        domain: mapValueOfType<String>(json, r'domain'),
        premium: mapValueOfType<bool>(json, r'premium'),
        priceCents: mapValueOfType<int>(json, r'priceCents'),
        renewalPriceCents: mapValueOfType<int>(json, r'renewalPriceCents'),
        tld: mapValueOfType<String>(json, r'tld'),
      );
    }
    return null;
  }

  static List<Offer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Offer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Offer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Offer> mapFromJson(dynamic json) {
    final map = <String, Offer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Offer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Offer-objects as value to a dart map
  static Map<String, List<Offer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Offer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Offer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

