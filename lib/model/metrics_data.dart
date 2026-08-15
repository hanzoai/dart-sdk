//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MetricsData {
  /// Returns a new [MetricsData] instance.
  MetricsData({
    this.asOf,
    this.currency,
    this.customers = const [],
    this.gaps = const [],
    this.generatedAt,
    this.orgs,
    this.revenue,
    this.sources = const [],
    this.subscriptions,
    this.usage,
    this.window,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  List<SaaSCustomer> customers;

  List<String> gaps;

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
  int? orgs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SaaSRevenue? revenue;

  List<SourceStatus> sources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SaaSSubs? subscriptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SaaSUsage? usage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetricsData &&
    other.asOf == asOf &&
    other.currency == currency &&
    _deepEquality.equals(other.customers, customers) &&
    _deepEquality.equals(other.gaps, gaps) &&
    other.generatedAt == generatedAt &&
    other.orgs == orgs &&
    other.revenue == revenue &&
    _deepEquality.equals(other.sources, sources) &&
    other.subscriptions == subscriptions &&
    other.usage == usage &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (customers.hashCode) +
    (gaps.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (orgs == null ? 0 : orgs!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (sources.hashCode) +
    (subscriptions == null ? 0 : subscriptions!.hashCode) +
    (usage == null ? 0 : usage!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'MetricsData[asOf=$asOf, currency=$currency, customers=$customers, gaps=$gaps, generatedAt=$generatedAt, orgs=$orgs, revenue=$revenue, sources=$sources, subscriptions=$subscriptions, usage=$usage, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
      json[r'customers'] = this.customers;
      json[r'gaps'] = this.gaps;
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.orgs != null) {
      json[r'orgs'] = this.orgs;
    } else {
      json[r'orgs'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
      json[r'sources'] = this.sources;
    if (this.subscriptions != null) {
      json[r'subscriptions'] = this.subscriptions;
    } else {
      json[r'subscriptions'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [MetricsData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetricsData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetricsData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetricsData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetricsData(
        asOf: mapValueOfType<String>(json, r'asOf'),
        currency: mapValueOfType<String>(json, r'currency'),
        customers: SaaSCustomer.listFromJson(json[r'customers']),
        gaps: json[r'gaps'] is Iterable
            ? (json[r'gaps'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        orgs: mapValueOfType<int>(json, r'orgs'),
        revenue: SaaSRevenue.fromJson(json[r'revenue']),
        sources: SourceStatus.listFromJson(json[r'sources']),
        subscriptions: SaaSSubs.fromJson(json[r'subscriptions']),
        usage: SaaSUsage.fromJson(json[r'usage']),
        window: mapValueOfType<String>(json, r'window'),
      );
    }
    return null;
  }

  static List<MetricsData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetricsData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricsData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetricsData> mapFromJson(dynamic json) {
    final map = <String, MetricsData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetricsData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetricsData-objects as value to a dart map
  static Map<String, List<MetricsData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetricsData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetricsData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

