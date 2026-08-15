//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AnalyticsData {
  /// Returns a new [AnalyticsData] instance.
  AnalyticsData({
    this.activeCustomers = const [],
    this.arpuCents,
    this.churn = const [],
    this.churnRatePct,
    this.computed = const {},
    this.cumulativeCustomers = const [],
    this.dau,
    this.generatedAt,
    this.growthRatePct,
    this.interval,
    this.ltvCents,
    this.mau,
    this.mrrCents,
    this.newCustomers,
    this.nrrPct,
    this.range,
    this.retention,
    this.revenue = const [],
    this.signups = const [],
    this.sources = const [],
    this.topCustomers = const [],
    this.totalCustomers,
    this.usage = const [],
    this.wau,
  });

  /// Active customers — from the usage ledger.
  List<SeriesPoint> activeCustomers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arpuCents;

  /// Churn — logo churn (count) + rate.
  List<SeriesPoint> churn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? churnRatePct;

  /// Transparency: which metrics are backed by real data vs honest-empty.
  Map<String, bool> computed;

  List<SeriesPoint> cumulativeCustomers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dau;

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
  num? growthRatePct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  /// null until churn is observed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ltvCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mau;

  /// Revenue analytics.
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
  int? newCustomers;

  /// null — needs MRR history
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? nrrPct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Retention triangle — signup cohort × active period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetentionGrid? retention;

  List<SeriesPoint> revenue;

  /// Growth — from IAM createdTime (always real).
  List<SeriesPoint> signups;

  List<SourceStatus> sources;

  List<AnalyticsSlice> topCustomers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCustomers;

  /// Usage analytics.
  List<SeriesPoint> usage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? wau;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyticsData &&
    _deepEquality.equals(other.activeCustomers, activeCustomers) &&
    other.arpuCents == arpuCents &&
    _deepEquality.equals(other.churn, churn) &&
    other.churnRatePct == churnRatePct &&
    _deepEquality.equals(other.computed, computed) &&
    _deepEquality.equals(other.cumulativeCustomers, cumulativeCustomers) &&
    other.dau == dau &&
    other.generatedAt == generatedAt &&
    other.growthRatePct == growthRatePct &&
    other.interval == interval &&
    other.ltvCents == ltvCents &&
    other.mau == mau &&
    other.mrrCents == mrrCents &&
    other.newCustomers == newCustomers &&
    other.nrrPct == nrrPct &&
    other.range == range &&
    other.retention == retention &&
    _deepEquality.equals(other.revenue, revenue) &&
    _deepEquality.equals(other.signups, signups) &&
    _deepEquality.equals(other.sources, sources) &&
    _deepEquality.equals(other.topCustomers, topCustomers) &&
    other.totalCustomers == totalCustomers &&
    _deepEquality.equals(other.usage, usage) &&
    other.wau == wau;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeCustomers.hashCode) +
    (arpuCents == null ? 0 : arpuCents!.hashCode) +
    (churn.hashCode) +
    (churnRatePct == null ? 0 : churnRatePct!.hashCode) +
    (computed.hashCode) +
    (cumulativeCustomers.hashCode) +
    (dau == null ? 0 : dau!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (growthRatePct == null ? 0 : growthRatePct!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (ltvCents == null ? 0 : ltvCents!.hashCode) +
    (mau == null ? 0 : mau!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (newCustomers == null ? 0 : newCustomers!.hashCode) +
    (nrrPct == null ? 0 : nrrPct!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (retention == null ? 0 : retention!.hashCode) +
    (revenue.hashCode) +
    (signups.hashCode) +
    (sources.hashCode) +
    (topCustomers.hashCode) +
    (totalCustomers == null ? 0 : totalCustomers!.hashCode) +
    (usage.hashCode) +
    (wau == null ? 0 : wau!.hashCode);

  @override
  String toString() => 'AnalyticsData[activeCustomers=$activeCustomers, arpuCents=$arpuCents, churn=$churn, churnRatePct=$churnRatePct, computed=$computed, cumulativeCustomers=$cumulativeCustomers, dau=$dau, generatedAt=$generatedAt, growthRatePct=$growthRatePct, interval=$interval, ltvCents=$ltvCents, mau=$mau, mrrCents=$mrrCents, newCustomers=$newCustomers, nrrPct=$nrrPct, range=$range, retention=$retention, revenue=$revenue, signups=$signups, sources=$sources, topCustomers=$topCustomers, totalCustomers=$totalCustomers, usage=$usage, wau=$wau]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'activeCustomers'] = this.activeCustomers;
    if (this.arpuCents != null) {
      json[r'arpuCents'] = this.arpuCents;
    } else {
      json[r'arpuCents'] = null;
    }
      json[r'churn'] = this.churn;
    if (this.churnRatePct != null) {
      json[r'churnRatePct'] = this.churnRatePct;
    } else {
      json[r'churnRatePct'] = null;
    }
      json[r'computed'] = this.computed;
      json[r'cumulativeCustomers'] = this.cumulativeCustomers;
    if (this.dau != null) {
      json[r'dau'] = this.dau;
    } else {
      json[r'dau'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.growthRatePct != null) {
      json[r'growthRatePct'] = this.growthRatePct;
    } else {
      json[r'growthRatePct'] = null;
    }
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.ltvCents != null) {
      json[r'ltvCents'] = this.ltvCents;
    } else {
      json[r'ltvCents'] = null;
    }
    if (this.mau != null) {
      json[r'mau'] = this.mau;
    } else {
      json[r'mau'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.newCustomers != null) {
      json[r'newCustomers'] = this.newCustomers;
    } else {
      json[r'newCustomers'] = null;
    }
    if (this.nrrPct != null) {
      json[r'nrrPct'] = this.nrrPct;
    } else {
      json[r'nrrPct'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.retention != null) {
      json[r'retention'] = this.retention;
    } else {
      json[r'retention'] = null;
    }
      json[r'revenue'] = this.revenue;
      json[r'signups'] = this.signups;
      json[r'sources'] = this.sources;
      json[r'topCustomers'] = this.topCustomers;
    if (this.totalCustomers != null) {
      json[r'totalCustomers'] = this.totalCustomers;
    } else {
      json[r'totalCustomers'] = null;
    }
      json[r'usage'] = this.usage;
    if (this.wau != null) {
      json[r'wau'] = this.wau;
    } else {
      json[r'wau'] = null;
    }
    return json;
  }

  /// Returns a new [AnalyticsData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyticsData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyticsData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyticsData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyticsData(
        activeCustomers: SeriesPoint.listFromJson(json[r'activeCustomers']),
        arpuCents: mapValueOfType<int>(json, r'arpuCents'),
        churn: SeriesPoint.listFromJson(json[r'churn']),
        churnRatePct: num.parse('${json[r'churnRatePct']}'),
        computed: mapCastOfType<String, bool>(json, r'computed') ?? const {},
        cumulativeCustomers: SeriesPoint.listFromJson(json[r'cumulativeCustomers']),
        dau: mapValueOfType<int>(json, r'dau'),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        growthRatePct: num.parse('${json[r'growthRatePct']}'),
        interval: mapValueOfType<String>(json, r'interval'),
        ltvCents: mapValueOfType<int>(json, r'ltvCents'),
        mau: mapValueOfType<int>(json, r'mau'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        newCustomers: mapValueOfType<int>(json, r'newCustomers'),
        nrrPct: num.parse('${json[r'nrrPct']}'),
        range: mapValueOfType<String>(json, r'range'),
        retention: RetentionGrid.fromJson(json[r'retention']),
        revenue: SeriesPoint.listFromJson(json[r'revenue']),
        signups: SeriesPoint.listFromJson(json[r'signups']),
        sources: SourceStatus.listFromJson(json[r'sources']),
        topCustomers: AnalyticsSlice.listFromJson(json[r'topCustomers']),
        totalCustomers: mapValueOfType<int>(json, r'totalCustomers'),
        usage: SeriesPoint.listFromJson(json[r'usage']),
        wau: mapValueOfType<int>(json, r'wau'),
      );
    }
    return null;
  }

  static List<AnalyticsData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyticsData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyticsData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyticsData> mapFromJson(dynamic json) {
    final map = <String, AnalyticsData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyticsData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyticsData-objects as value to a dart map
  static Map<String, List<AnalyticsData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyticsData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyticsData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

