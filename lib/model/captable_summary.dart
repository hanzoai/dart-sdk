//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableSummary {
  /// Returns a new [CaptableSummary] instance.
  CaptableSummary({
    this.byShareClass = const [],
    this.byStakeholder = const [],
    this.company,
    this.convertibles,
    this.rounds,
    this.totals,
  });
  /// ByShareClass is each share class's authorized-versus-issued position, in class creation order.
  List<CaptableClassHolding> byShareClass;

  /// ByStakeholder is each stakeholder's position, largest holding first.
  List<CaptableHolding> byStakeholder;

  /// Company names the company the cap table is computed for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableSummaryCompany? company;

  /// Convertibles is the capital on SAFEs and notes that have not converted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableConvertibles? convertibles;

  /// Rounds is the fundraising rollup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableRoundTotals? rounds;

  /// Totals is the company-wide share count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableTotals? totals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableSummary &&
    _deepEquality.equals(other.byShareClass, byShareClass) &&
    _deepEquality.equals(other.byStakeholder, byStakeholder) &&
    other.company == company &&
    other.convertibles == convertibles &&
    other.rounds == rounds &&
    other.totals == totals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byShareClass.hashCode) +
    (byStakeholder.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (convertibles == null ? 0 : convertibles!.hashCode) +
    (rounds == null ? 0 : rounds!.hashCode) +
    (totals == null ? 0 : totals!.hashCode);

  @override
  String toString() => 'CaptableSummary[byShareClass=$byShareClass, byStakeholder=$byStakeholder, company=$company, convertibles=$convertibles, rounds=$rounds, totals=$totals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'byShareClass'] = this.byShareClass;
      json[r'byStakeholder'] = this.byStakeholder;
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
    if (this.convertibles != null) {
      json[r'convertibles'] = this.convertibles;
    } else {
      json[r'convertibles'] = null;
    }
    if (this.rounds != null) {
      json[r'rounds'] = this.rounds;
    } else {
      json[r'rounds'] = null;
    }
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableSummary(
        byShareClass: CaptableClassHolding.listFromJson(json[r'byShareClass']),
        byStakeholder: CaptableHolding.listFromJson(json[r'byStakeholder']),
        company: CaptableSummaryCompany.fromJson(json[r'company']),
        convertibles: CaptableConvertibles.fromJson(json[r'convertibles']),
        rounds: CaptableRoundTotals.fromJson(json[r'rounds']),
        totals: CaptableTotals.fromJson(json[r'totals']),
      );
    }
    return null;
  }

  static List<CaptableSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableSummary> mapFromJson(dynamic json) {
    final map = <String, CaptableSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableSummary-objects as value to a dart map
  static Map<String, List<CaptableSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

