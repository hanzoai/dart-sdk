//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Redemption {
  /// Returns a new [Redemption] instance.
  Redemption({
    this.code,
    this.discountCents,
    this.plan,
    this.redeemedAt,
    this.seats,
  });

  /// Code is the promo redeemed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// DiscountCents is the month-one discount this redemption CLAIMS, in USD cents. It is a recorded figure, NOT a balance: nothing was credited and no wallet moved. An admin granting against this claim is what would make it money, and that decision happens on the admin surface, not here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discountCents;

  /// Plan and Seats are what was redeemed against. Both are DERIVED server-side — Plan from the org's live paid subscription, Seats from claimSeats — and neither is ever read from the request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// RedeemedAt is unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redeemedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Redemption &&
    other.code == code &&
    other.discountCents == discountCents &&
    other.plan == plan &&
    other.redeemedAt == redeemedAt &&
    other.seats == seats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (discountCents == null ? 0 : discountCents!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (redeemedAt == null ? 0 : redeemedAt!.hashCode) +
    (seats == null ? 0 : seats!.hashCode);

  @override
  String toString() => 'Redemption[code=$code, discountCents=$discountCents, plan=$plan, redeemedAt=$redeemedAt, seats=$seats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.discountCents != null) {
      json[r'discountCents'] = this.discountCents;
    } else {
      json[r'discountCents'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.redeemedAt != null) {
      json[r'redeemedAt'] = this.redeemedAt;
    } else {
      json[r'redeemedAt'] = null;
    }
    if (this.seats != null) {
      json[r'seats'] = this.seats;
    } else {
      json[r'seats'] = null;
    }
    return json;
  }

  /// Returns a new [Redemption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Redemption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Redemption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Redemption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Redemption(
        code: mapValueOfType<String>(json, r'code'),
        discountCents: mapValueOfType<int>(json, r'discountCents'),
        plan: mapValueOfType<String>(json, r'plan'),
        redeemedAt: mapValueOfType<int>(json, r'redeemedAt'),
        seats: mapValueOfType<int>(json, r'seats'),
      );
    }
    return null;
  }

  static List<Redemption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Redemption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Redemption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Redemption> mapFromJson(dynamic json) {
    final map = <String, Redemption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Redemption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Redemption-objects as value to a dart map
  static Map<String, List<Redemption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Redemption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Redemption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

