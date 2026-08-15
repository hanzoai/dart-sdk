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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chargeCents;

  /// Code, Plan and Seats echo what was quoted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

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

  /// ListCents is the undiscounted month price, ChargeCents what would be charged, DiscountCents the difference — all in USD cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? listCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

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

