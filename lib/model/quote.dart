//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Quote {
  /// Returns a new [Quote] instance.
  Quote({
    this.chargeCents,
    this.code,
    this.discountCents,
    this.eligible,
    this.listCents,
    this.plan,
    this.reason,
    this.remaining,
    this.seats,
  });
  /// ChargeCents is what month one costs after the discount, in USD cents, totalled over the seats quoted. On team that is a multiple of the seat count, so it is not ListCents minus DiscountCents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chargeCents;

  /// Code is the promo that was priced, as stored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// DiscountCents is what the promo takes off month one, in USD cents. The promo rate reaches at most TeamSeatCap seats; seats past the cap bill at full list and add nothing here. It is arithmetic only — quoting credits nothing, counts nothing and reserves nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discountCents;

  /// Eligible says whether a redeem would be accepted right now; Reason says why not when it would not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? eligible;

  /// ListCents is the undiscounted month price in USD cents: PER SEAT on team, the whole month on pro and max, 0 for a plan with no list price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? listCents;

  /// Plan is the tier priced, lower-cased and trimmed: pro, max or team. Unlike a redemption's plan this one comes from the REQUEST — quoting has no side effects, so it will happily price a plan the caller does not hold.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Reason is why Eligible is false, drawn from: \"promo redemption is closed\" (the subsystem is off, which is how it ships), \"promo redemption cap reached\", \"promo is not active\", \"plan is free or unknown; nothing to discount\", \"promo does not cover plan <plan>\". Absent when Eligible is true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Remaining is how many redemptions are left under the fleet-wide cap.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remaining;

  /// Seats is the seat count priced; a request of 0 or less was read as 1. It only bites on team, the one per-seat plan — pro and max are single-seat and ignore it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? seats;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Quote &&
    other.chargeCents == chargeCents &&
    other.code == code &&
    other.discountCents == discountCents &&
    other.eligible == eligible &&
    other.listCents == listCents &&
    other.plan == plan &&
    other.reason == reason &&
    other.remaining == remaining &&
    other.seats == seats;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chargeCents == null ? 0 : chargeCents!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (discountCents == null ? 0 : discountCents!.hashCode) +
    (eligible == null ? 0 : eligible!.hashCode) +
    (listCents == null ? 0 : listCents!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (remaining == null ? 0 : remaining!.hashCode) +
    (seats == null ? 0 : seats!.hashCode);

  @override
  String toString() => 'Quote[chargeCents=$chargeCents, code=$code, discountCents=$discountCents, eligible=$eligible, listCents=$listCents, plan=$plan, reason=$reason, remaining=$remaining, seats=$seats]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chargeCents != null) {
      json[r'chargeCents'] = this.chargeCents;
    } else {
      json[r'chargeCents'] = null;
    }
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
    if (this.eligible != null) {
      json[r'eligible'] = this.eligible;
    } else {
      json[r'eligible'] = null;
    }
    if (this.listCents != null) {
      json[r'listCents'] = this.listCents;
    } else {
      json[r'listCents'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.remaining != null) {
      json[r'remaining'] = this.remaining;
    } else {
      json[r'remaining'] = null;
    }
    if (this.seats != null) {
      json[r'seats'] = this.seats;
    } else {
      json[r'seats'] = null;
    }
    return json;
  }

  /// Returns a new [Quote] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Quote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Quote[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Quote[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Quote(
        chargeCents: mapValueOfType<int>(json, r'chargeCents'),
        code: mapValueOfType<String>(json, r'code'),
        discountCents: mapValueOfType<int>(json, r'discountCents'),
        eligible: mapValueOfType<bool>(json, r'eligible'),
        listCents: mapValueOfType<int>(json, r'listCents'),
        plan: mapValueOfType<String>(json, r'plan'),
        reason: mapValueOfType<String>(json, r'reason'),
        remaining: mapValueOfType<int>(json, r'remaining'),
        seats: mapValueOfType<int>(json, r'seats'),
      );
    }
    return null;
  }

  static List<Quote> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Quote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Quote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Quote> mapFromJson(dynamic json) {
    final map = <String, Quote>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Quote.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Quote-objects as value to a dart map
  static Map<String, List<Quote>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Quote>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Quote.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

