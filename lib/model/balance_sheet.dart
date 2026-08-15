//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BalanceSheet {
  /// Returns a new [BalanceSheet] instance.
  BalanceSheet({
    this.asOf,
    this.assets = const [],
    this.balanced,
    this.equity = const [],
    this.liabilities = const [],
    this.totalAssets,
    this.totalEquity,
    this.totalLiabilities,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  List<BalanceLine> assets;

  /// TotalAssets == TotalLiabilities + TotalEquity
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? balanced;

  List<BalanceLine> equity;

  List<BalanceLine> liabilities;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalAssets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalEquity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalLiabilities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BalanceSheet &&
    other.asOf == asOf &&
    _deepEquality.equals(other.assets, assets) &&
    other.balanced == balanced &&
    _deepEquality.equals(other.equity, equity) &&
    _deepEquality.equals(other.liabilities, liabilities) &&
    other.totalAssets == totalAssets &&
    other.totalEquity == totalEquity &&
    other.totalLiabilities == totalLiabilities;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (assets.hashCode) +
    (balanced == null ? 0 : balanced!.hashCode) +
    (equity.hashCode) +
    (liabilities.hashCode) +
    (totalAssets == null ? 0 : totalAssets!.hashCode) +
    (totalEquity == null ? 0 : totalEquity!.hashCode) +
    (totalLiabilities == null ? 0 : totalLiabilities!.hashCode);

  @override
  String toString() => 'BalanceSheet[asOf=$asOf, assets=$assets, balanced=$balanced, equity=$equity, liabilities=$liabilities, totalAssets=$totalAssets, totalEquity=$totalEquity, totalLiabilities=$totalLiabilities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
      json[r'assets'] = this.assets;
    if (this.balanced != null) {
      json[r'balanced'] = this.balanced;
    } else {
      json[r'balanced'] = null;
    }
      json[r'equity'] = this.equity;
      json[r'liabilities'] = this.liabilities;
    if (this.totalAssets != null) {
      json[r'totalAssets'] = this.totalAssets;
    } else {
      json[r'totalAssets'] = null;
    }
    if (this.totalEquity != null) {
      json[r'totalEquity'] = this.totalEquity;
    } else {
      json[r'totalEquity'] = null;
    }
    if (this.totalLiabilities != null) {
      json[r'totalLiabilities'] = this.totalLiabilities;
    } else {
      json[r'totalLiabilities'] = null;
    }
    return json;
  }

  /// Returns a new [BalanceSheet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BalanceSheet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BalanceSheet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BalanceSheet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BalanceSheet(
        asOf: mapValueOfType<String>(json, r'asOf'),
        assets: BalanceLine.listFromJson(json[r'assets']),
        balanced: mapValueOfType<bool>(json, r'balanced'),
        equity: BalanceLine.listFromJson(json[r'equity']),
        liabilities: BalanceLine.listFromJson(json[r'liabilities']),
        totalAssets: mapValueOfType<int>(json, r'totalAssets'),
        totalEquity: mapValueOfType<int>(json, r'totalEquity'),
        totalLiabilities: mapValueOfType<int>(json, r'totalLiabilities'),
      );
    }
    return null;
  }

  static List<BalanceSheet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BalanceSheet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BalanceSheet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BalanceSheet> mapFromJson(dynamic json) {
    final map = <String, BalanceSheet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BalanceSheet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BalanceSheet-objects as value to a dart map
  static Map<String, List<BalanceSheet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BalanceSheet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BalanceSheet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

