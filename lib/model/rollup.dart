//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Rollup {
  /// Returns a new [Rollup] instance.
  Rollup({
    this.balance,
    this.consumedCents,
    this.currency,
    this.included,
    this.overageCents,
    this.period,
    this.plan,
    this.user,
    this.windows = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RollupBalance? balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? consumedCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RollupAllotment? included;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? overageCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

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
  String? user;

  List<Window> windows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Rollup &&
    other.balance == balance &&
    other.consumedCents == consumedCents &&
    other.currency == currency &&
    other.included == included &&
    other.overageCents == overageCents &&
    other.period == period &&
    other.plan == plan &&
    other.user == user &&
    _deepEquality.equals(other.windows, windows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balance == null ? 0 : balance!.hashCode) +
    (consumedCents == null ? 0 : consumedCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (included == null ? 0 : included!.hashCode) +
    (overageCents == null ? 0 : overageCents!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (windows.hashCode);

  @override
  String toString() => 'Rollup[balance=$balance, consumedCents=$consumedCents, currency=$currency, included=$included, overageCents=$overageCents, period=$period, plan=$plan, user=$user, windows=$windows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.consumedCents != null) {
      json[r'consumedCents'] = this.consumedCents;
    } else {
      json[r'consumedCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.included != null) {
      json[r'included'] = this.included;
    } else {
      json[r'included'] = null;
    }
    if (this.overageCents != null) {
      json[r'overageCents'] = this.overageCents;
    } else {
      json[r'overageCents'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
      json[r'windows'] = this.windows;
    return json;
  }

  /// Returns a new [Rollup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Rollup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Rollup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Rollup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Rollup(
        balance: RollupBalance.fromJson(json[r'balance']),
        consumedCents: mapValueOfType<int>(json, r'consumedCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        included: RollupAllotment.fromJson(json[r'included']),
        overageCents: mapValueOfType<int>(json, r'overageCents'),
        period: mapValueOfType<String>(json, r'period'),
        plan: mapValueOfType<String>(json, r'plan'),
        user: mapValueOfType<String>(json, r'user'),
        windows: Window.listFromJson(json[r'windows']),
      );
    }
    return null;
  }

  static List<Rollup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Rollup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Rollup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Rollup> mapFromJson(dynamic json) {
    final map = <String, Rollup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Rollup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Rollup-objects as value to a dart map
  static Map<String, List<Rollup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Rollup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Rollup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

