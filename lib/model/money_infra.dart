//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MoneyInfra {
  /// Returns a new [MoneyInfra] instance.
  MoneyInfra({
    this.doAvgDailyBurnCents,
    this.doCreditRemainingCents,
    this.doMonthToDateCents,
    this.period,
    this.treasuryReserveCents,
    this.vendorCogsCents,
    this.vendors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? doAvgDailyBurnCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? doCreditRemainingCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? doMonthToDateCents;

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
  int? treasuryReserveCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vendorCogsCents;

  List<Vendor> vendors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoneyInfra &&
    other.doAvgDailyBurnCents == doAvgDailyBurnCents &&
    other.doCreditRemainingCents == doCreditRemainingCents &&
    other.doMonthToDateCents == doMonthToDateCents &&
    other.period == period &&
    other.treasuryReserveCents == treasuryReserveCents &&
    other.vendorCogsCents == vendorCogsCents &&
    _deepEquality.equals(other.vendors, vendors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doAvgDailyBurnCents == null ? 0 : doAvgDailyBurnCents!.hashCode) +
    (doCreditRemainingCents == null ? 0 : doCreditRemainingCents!.hashCode) +
    (doMonthToDateCents == null ? 0 : doMonthToDateCents!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (treasuryReserveCents == null ? 0 : treasuryReserveCents!.hashCode) +
    (vendorCogsCents == null ? 0 : vendorCogsCents!.hashCode) +
    (vendors.hashCode);

  @override
  String toString() => 'MoneyInfra[doAvgDailyBurnCents=$doAvgDailyBurnCents, doCreditRemainingCents=$doCreditRemainingCents, doMonthToDateCents=$doMonthToDateCents, period=$period, treasuryReserveCents=$treasuryReserveCents, vendorCogsCents=$vendorCogsCents, vendors=$vendors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.doAvgDailyBurnCents != null) {
      json[r'doAvgDailyBurnCents'] = this.doAvgDailyBurnCents;
    } else {
      json[r'doAvgDailyBurnCents'] = null;
    }
    if (this.doCreditRemainingCents != null) {
      json[r'doCreditRemainingCents'] = this.doCreditRemainingCents;
    } else {
      json[r'doCreditRemainingCents'] = null;
    }
    if (this.doMonthToDateCents != null) {
      json[r'doMonthToDateCents'] = this.doMonthToDateCents;
    } else {
      json[r'doMonthToDateCents'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.treasuryReserveCents != null) {
      json[r'treasuryReserveCents'] = this.treasuryReserveCents;
    } else {
      json[r'treasuryReserveCents'] = null;
    }
    if (this.vendorCogsCents != null) {
      json[r'vendorCogsCents'] = this.vendorCogsCents;
    } else {
      json[r'vendorCogsCents'] = null;
    }
      json[r'vendors'] = this.vendors;
    return json;
  }

  /// Returns a new [MoneyInfra] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoneyInfra? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoneyInfra[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoneyInfra[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoneyInfra(
        doAvgDailyBurnCents: mapValueOfType<int>(json, r'doAvgDailyBurnCents'),
        doCreditRemainingCents: mapValueOfType<int>(json, r'doCreditRemainingCents'),
        doMonthToDateCents: mapValueOfType<int>(json, r'doMonthToDateCents'),
        period: mapValueOfType<String>(json, r'period'),
        treasuryReserveCents: mapValueOfType<int>(json, r'treasuryReserveCents'),
        vendorCogsCents: mapValueOfType<int>(json, r'vendorCogsCents'),
        vendors: Vendor.listFromJson(json[r'vendors']),
      );
    }
    return null;
  }

  static List<MoneyInfra> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyInfra>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyInfra.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoneyInfra> mapFromJson(dynamic json) {
    final map = <String, MoneyInfra>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoneyInfra.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoneyInfra-objects as value to a dart map
  static Map<String, List<MoneyInfra>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoneyInfra>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoneyInfra.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

