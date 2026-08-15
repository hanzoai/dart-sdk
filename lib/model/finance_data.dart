//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceData {
  /// Returns a new [FinanceData] instance.
  FinanceData({
    this.cost,
    this.derived,
    this.generatedAt,
    this.revenue,
    this.sources = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FinanceCost? cost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FinanceDerived? derived;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FinanceRevenue? revenue;

  List<SourceStatus> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceData &&
    other.cost == cost &&
    other.derived == derived &&
    other.generatedAt == generatedAt &&
    other.revenue == revenue &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cost == null ? 0 : cost!.hashCode) +
    (derived == null ? 0 : derived!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'FinanceData[cost=$cost, derived=$derived, generatedAt=$generatedAt, revenue=$revenue, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.derived != null) {
      json[r'derived'] = this.derived;
    } else {
      json[r'derived'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [FinanceData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceData(
        cost: FinanceCost.fromJson(json[r'cost']),
        derived: FinanceDerived.fromJson(json[r'derived']),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        revenue: FinanceRevenue.fromJson(json[r'revenue']),
        sources: SourceStatus.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<FinanceData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceData> mapFromJson(dynamic json) {
    final map = <String, FinanceData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceData-objects as value to a dart map
  static Map<String, List<FinanceData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

