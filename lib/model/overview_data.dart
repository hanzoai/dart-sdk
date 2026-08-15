//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OverviewData {
  /// Returns a new [OverviewData] instance.
  OverviewData({
    this.activeProducts,
    this.creditsCents,
    this.drift,
    this.lastSync,
    this.orgs,
    this.products,
    this.sources = const [],
    this.spendCents30d,
    this.tokens30d,
    this.users,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeProducts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creditsCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? drift;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSync;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orgs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? products;

  List<SourceStatus> sources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents30d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens30d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OverviewData &&
    other.activeProducts == activeProducts &&
    other.creditsCents == creditsCents &&
    other.drift == drift &&
    other.lastSync == lastSync &&
    other.orgs == orgs &&
    other.products == products &&
    _deepEquality.equals(other.sources, sources) &&
    other.spendCents30d == spendCents30d &&
    other.tokens30d == tokens30d &&
    other.users == users;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeProducts == null ? 0 : activeProducts!.hashCode) +
    (creditsCents == null ? 0 : creditsCents!.hashCode) +
    (drift == null ? 0 : drift!.hashCode) +
    (lastSync == null ? 0 : lastSync!.hashCode) +
    (orgs == null ? 0 : orgs!.hashCode) +
    (products == null ? 0 : products!.hashCode) +
    (sources.hashCode) +
    (spendCents30d == null ? 0 : spendCents30d!.hashCode) +
    (tokens30d == null ? 0 : tokens30d!.hashCode) +
    (users == null ? 0 : users!.hashCode);

  @override
  String toString() => 'OverviewData[activeProducts=$activeProducts, creditsCents=$creditsCents, drift=$drift, lastSync=$lastSync, orgs=$orgs, products=$products, sources=$sources, spendCents30d=$spendCents30d, tokens30d=$tokens30d, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activeProducts != null) {
      json[r'activeProducts'] = this.activeProducts;
    } else {
      json[r'activeProducts'] = null;
    }
    if (this.creditsCents != null) {
      json[r'creditsCents'] = this.creditsCents;
    } else {
      json[r'creditsCents'] = null;
    }
    if (this.drift != null) {
      json[r'drift'] = this.drift;
    } else {
      json[r'drift'] = null;
    }
    if (this.lastSync != null) {
      json[r'lastSync'] = this.lastSync;
    } else {
      json[r'lastSync'] = null;
    }
    if (this.orgs != null) {
      json[r'orgs'] = this.orgs;
    } else {
      json[r'orgs'] = null;
    }
    if (this.products != null) {
      json[r'products'] = this.products;
    } else {
      json[r'products'] = null;
    }
      json[r'sources'] = this.sources;
    if (this.spendCents30d != null) {
      json[r'spendCents30d'] = this.spendCents30d;
    } else {
      json[r'spendCents30d'] = null;
    }
    if (this.tokens30d != null) {
      json[r'tokens30d'] = this.tokens30d;
    } else {
      json[r'tokens30d'] = null;
    }
    if (this.users != null) {
      json[r'users'] = this.users;
    } else {
      json[r'users'] = null;
    }
    return json;
  }

  /// Returns a new [OverviewData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OverviewData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OverviewData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OverviewData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OverviewData(
        activeProducts: mapValueOfType<int>(json, r'activeProducts'),
        creditsCents: mapValueOfType<int>(json, r'creditsCents'),
        drift: mapValueOfType<int>(json, r'drift'),
        lastSync: mapValueOfType<String>(json, r'lastSync'),
        orgs: mapValueOfType<int>(json, r'orgs'),
        products: mapValueOfType<int>(json, r'products'),
        sources: SourceStatus.listFromJson(json[r'sources']),
        spendCents30d: mapValueOfType<int>(json, r'spendCents30d'),
        tokens30d: mapValueOfType<int>(json, r'tokens30d'),
        users: mapValueOfType<int>(json, r'users'),
      );
    }
    return null;
  }

  static List<OverviewData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OverviewData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OverviewData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OverviewData> mapFromJson(dynamic json) {
    final map = <String, OverviewData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OverviewData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OverviewData-objects as value to a dart map
  static Map<String, List<OverviewData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OverviewData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OverviewData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

