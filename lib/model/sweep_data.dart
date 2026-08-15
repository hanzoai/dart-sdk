//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SweepData {
  /// Returns a new [SweepData] instance.
  SweepData({
    this.accruedCents,
    this.created,
    this.period,
    this.reserveCents,
    this.revenueCents,
  });

  /// AccruedCents is the amount moved into the reserve fund.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accruedCents;

  /// Created is false when this period had already been swept — the accrual is idempotent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// Period is the period actually accrued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  /// ReserveCents is the fund balance after the accrual.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reserveCents;

  /// RevenueCents is the revenue the share was computed from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revenueCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SweepData &&
    other.accruedCents == accruedCents &&
    other.created == created &&
    other.period == period &&
    other.reserveCents == reserveCents &&
    other.revenueCents == revenueCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accruedCents == null ? 0 : accruedCents!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (reserveCents == null ? 0 : reserveCents!.hashCode) +
    (revenueCents == null ? 0 : revenueCents!.hashCode);

  @override
  String toString() => 'SweepData[accruedCents=$accruedCents, created=$created, period=$period, reserveCents=$reserveCents, revenueCents=$revenueCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accruedCents != null) {
      json[r'accruedCents'] = this.accruedCents;
    } else {
      json[r'accruedCents'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.reserveCents != null) {
      json[r'reserveCents'] = this.reserveCents;
    } else {
      json[r'reserveCents'] = null;
    }
    if (this.revenueCents != null) {
      json[r'revenueCents'] = this.revenueCents;
    } else {
      json[r'revenueCents'] = null;
    }
    return json;
  }

  /// Returns a new [SweepData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SweepData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SweepData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SweepData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SweepData(
        accruedCents: mapValueOfType<int>(json, r'accruedCents'),
        created: mapValueOfType<bool>(json, r'created'),
        period: mapValueOfType<String>(json, r'period'),
        reserveCents: mapValueOfType<int>(json, r'reserveCents'),
        revenueCents: mapValueOfType<int>(json, r'revenueCents'),
      );
    }
    return null;
  }

  static List<SweepData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SweepData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SweepData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SweepData> mapFromJson(dynamic json) {
    final map = <String, SweepData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SweepData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SweepData-objects as value to a dart map
  static Map<String, List<SweepData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SweepData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SweepData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

