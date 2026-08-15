//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RevenueData {
  /// Returns a new [RevenueData] instance.
  RevenueData({
    this.arpuCents,
    this.customers,
    this.generatedAt,
    this.mrrCents,
    this.payingCustomers,
    this.perCustomer = const [],
    this.sources = const [],
    this.spendTrend = const [],
    this.totalBalancesCents,
    this.totalSpendCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arpuCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customers;

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
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? payingCustomers;

  List<RevenueCustomer> perCustomer;

  List<SourceStatus> sources;

  List<SeriesPoint> spendTrend;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalBalancesCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSpendCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevenueData &&
    other.arpuCents == arpuCents &&
    other.customers == customers &&
    other.generatedAt == generatedAt &&
    other.mrrCents == mrrCents &&
    other.payingCustomers == payingCustomers &&
    _deepEquality.equals(other.perCustomer, perCustomer) &&
    _deepEquality.equals(other.sources, sources) &&
    _deepEquality.equals(other.spendTrend, spendTrend) &&
    other.totalBalancesCents == totalBalancesCents &&
    other.totalSpendCents == totalSpendCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arpuCents == null ? 0 : arpuCents!.hashCode) +
    (customers == null ? 0 : customers!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (payingCustomers == null ? 0 : payingCustomers!.hashCode) +
    (perCustomer.hashCode) +
    (sources.hashCode) +
    (spendTrend.hashCode) +
    (totalBalancesCents == null ? 0 : totalBalancesCents!.hashCode) +
    (totalSpendCents == null ? 0 : totalSpendCents!.hashCode);

  @override
  String toString() => 'RevenueData[arpuCents=$arpuCents, customers=$customers, generatedAt=$generatedAt, mrrCents=$mrrCents, payingCustomers=$payingCustomers, perCustomer=$perCustomer, sources=$sources, spendTrend=$spendTrend, totalBalancesCents=$totalBalancesCents, totalSpendCents=$totalSpendCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arpuCents != null) {
      json[r'arpuCents'] = this.arpuCents;
    } else {
      json[r'arpuCents'] = null;
    }
    if (this.customers != null) {
      json[r'customers'] = this.customers;
    } else {
      json[r'customers'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.payingCustomers != null) {
      json[r'payingCustomers'] = this.payingCustomers;
    } else {
      json[r'payingCustomers'] = null;
    }
      json[r'perCustomer'] = this.perCustomer;
      json[r'sources'] = this.sources;
      json[r'spendTrend'] = this.spendTrend;
    if (this.totalBalancesCents != null) {
      json[r'totalBalancesCents'] = this.totalBalancesCents;
    } else {
      json[r'totalBalancesCents'] = null;
    }
    if (this.totalSpendCents != null) {
      json[r'totalSpendCents'] = this.totalSpendCents;
    } else {
      json[r'totalSpendCents'] = null;
    }
    return json;
  }

  /// Returns a new [RevenueData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevenueData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevenueData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevenueData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevenueData(
        arpuCents: mapValueOfType<int>(json, r'arpuCents'),
        customers: mapValueOfType<int>(json, r'customers'),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        payingCustomers: mapValueOfType<int>(json, r'payingCustomers'),
        perCustomer: RevenueCustomer.listFromJson(json[r'perCustomer']),
        sources: SourceStatus.listFromJson(json[r'sources']),
        spendTrend: SeriesPoint.listFromJson(json[r'spendTrend']),
        totalBalancesCents: mapValueOfType<int>(json, r'totalBalancesCents'),
        totalSpendCents: mapValueOfType<int>(json, r'totalSpendCents'),
      );
    }
    return null;
  }

  static List<RevenueData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevenueData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevenueData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevenueData> mapFromJson(dynamic json) {
    final map = <String, RevenueData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevenueData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevenueData-objects as value to a dart map
  static Map<String, List<RevenueData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevenueData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevenueData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

