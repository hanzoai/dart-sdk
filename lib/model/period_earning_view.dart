//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PeriodEarningView {
  /// Returns a new [PeriodEarningView] instance.
  PeriodEarningView({
    this.commissionCents,
    this.marginCents,
    this.period,
  });

  /// CommissionCents is what the caller earned that period, in cents: the sum over each referred org and upline level of margin × that level's rate. Always ≤ marginCents, by construction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? commissionCents;

  /// MarginCents is the margin Hanzo earned in that period on the spend of every org the caller referred, in cents — the base commission is a rate OF. It is the aggregate base, never any one customer's bill.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? marginCents;

  /// Period is the accrual bucket: the UTC year-month, \"YYYY-MM\". Commission is latched at most once per referred org per period, so one row is one month.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeriodEarningView &&
    other.commissionCents == commissionCents &&
    other.marginCents == marginCents &&
    other.period == period;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commissionCents == null ? 0 : commissionCents!.hashCode) +
    (marginCents == null ? 0 : marginCents!.hashCode) +
    (period == null ? 0 : period!.hashCode);

  @override
  String toString() => 'PeriodEarningView[commissionCents=$commissionCents, marginCents=$marginCents, period=$period]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.commissionCents != null) {
      json[r'commissionCents'] = this.commissionCents;
    } else {
      json[r'commissionCents'] = null;
    }
    if (this.marginCents != null) {
      json[r'marginCents'] = this.marginCents;
    } else {
      json[r'marginCents'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    return json;
  }

  /// Returns a new [PeriodEarningView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeriodEarningView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PeriodEarningView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PeriodEarningView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PeriodEarningView(
        commissionCents: mapValueOfType<int>(json, r'commissionCents'),
        marginCents: mapValueOfType<int>(json, r'marginCents'),
        period: mapValueOfType<String>(json, r'period'),
      );
    }
    return null;
  }

  static List<PeriodEarningView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeriodEarningView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeriodEarningView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeriodEarningView> mapFromJson(dynamic json) {
    final map = <String, PeriodEarningView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeriodEarningView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeriodEarningView-objects as value to a dart map
  static Map<String, List<PeriodEarningView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeriodEarningView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeriodEarningView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

