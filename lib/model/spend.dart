//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Spend {
  /// Returns a new [Spend] instance.
  Spend({
    this.available,
    this.availableCents,
    this.balanceCents,
    this.byCategory = const [],
    this.mtdCents,
    this.overageCents,
    this.series = const [],
    this.source_,
    this.totalCents,
  });
  /// Available is false when the commerce ledger was unconfigured or unreachable. Every number below is then an honest zero, NOT a measured one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// AvailableCents is what of that balance is still spendable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableCents;

  /// BalanceCents is the prepaid wallet's balance, in US cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

  /// ByCategory is the window's spend split by ledger category, largest first.
  List<CategorySpend> byCategory;

  /// MTDCents is commerce's authoritative month-to-date consumed figure, which is a different period from the window and is not derived from it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mtdCents;

  /// OverageCents is month-to-date consumption beyond the plan's allowance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? overageCents;

  /// Series is the window's spend over time, gap-filled at the window's interval.
  List<SpendPoint> series;

  /// Source names where the roll-up came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// TotalCents is consumption over the requested window, in US cents. It is self-consistent with ByCategory and Series.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Spend &&
    other.available == available &&
    other.availableCents == availableCents &&
    other.balanceCents == balanceCents &&
    _deepEquality.equals(other.byCategory, byCategory) &&
    other.mtdCents == mtdCents &&
    other.overageCents == overageCents &&
    _deepEquality.equals(other.series, series) &&
    other.source_ == source_ &&
    other.totalCents == totalCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (availableCents == null ? 0 : availableCents!.hashCode) +
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (byCategory.hashCode) +
    (mtdCents == null ? 0 : mtdCents!.hashCode) +
    (overageCents == null ? 0 : overageCents!.hashCode) +
    (series.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (totalCents == null ? 0 : totalCents!.hashCode);

  @override
  String toString() => 'Spend[available=$available, availableCents=$availableCents, balanceCents=$balanceCents, byCategory=$byCategory, mtdCents=$mtdCents, overageCents=$overageCents, series=$series, source_=$source_, totalCents=$totalCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.availableCents != null) {
      json[r'availableCents'] = this.availableCents;
    } else {
      json[r'availableCents'] = null;
    }
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
      json[r'byCategory'] = this.byCategory;
    if (this.mtdCents != null) {
      json[r'mtdCents'] = this.mtdCents;
    } else {
      json[r'mtdCents'] = null;
    }
    if (this.overageCents != null) {
      json[r'overageCents'] = this.overageCents;
    } else {
      json[r'overageCents'] = null;
    }
      json[r'series'] = this.series;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.totalCents != null) {
      json[r'totalCents'] = this.totalCents;
    } else {
      json[r'totalCents'] = null;
    }
    return json;
  }

  /// Returns a new [Spend] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Spend? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Spend[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Spend[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Spend(
        available: mapValueOfType<bool>(json, r'available'),
        availableCents: mapValueOfType<int>(json, r'availableCents'),
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        byCategory: CategorySpend.listFromJson(json[r'byCategory']),
        mtdCents: mapValueOfType<int>(json, r'mtdCents'),
        overageCents: mapValueOfType<int>(json, r'overageCents'),
        series: SpendPoint.listFromJson(json[r'series']),
        source_: mapValueOfType<String>(json, r'source'),
        totalCents: mapValueOfType<int>(json, r'totalCents'),
      );
    }
    return null;
  }

  static List<Spend> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Spend>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Spend.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Spend> mapFromJson(dynamic json) {
    final map = <String, Spend>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Spend.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Spend-objects as value to a dart map
  static Map<String, List<Spend>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Spend>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Spend.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

