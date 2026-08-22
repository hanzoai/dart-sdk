//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MetricsResponse {
  /// Returns a new [MetricsResponse] instance.
  MetricsResponse({
    this.arr,
    this.burn,
    this.cash,
    this.cogs,
    this.deferredRevenue,
    this.figures = const [],
    this.from,
    this.grossMarginBps,
    this.grossProfit,
    this.monthlyBurn,
    this.months,
    this.mrr,
    this.netIncome,
    this.period,
    this.revenue,
    this.runwayMonths,
    this.to,
  });
  /// ARR is annualized recurring revenue in cents (MRR × 12).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? arr;

  /// Burn is total expense in cents over the period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? burn;

  /// Cash is the bank + processor-clearing balance in cents as of To.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cash;

  /// COGS is cost of goods sold in cents over the period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cogs;

  /// DeferredRevenue is the customer-wallet liability in cents as of To.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deferredRevenue;

  /// Figures is the same snapshot rendered through books' one money formatter.
  List<Figure> figures;

  /// From is the RFC3339 start of the reporting window, exclusive; absent for all time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// GrossMarginBps is GrossProfit / Revenue in basis points (7000 = 70%).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grossMarginBps;

  /// GrossProfit is Revenue − COGS, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grossProfit;

  /// MonthlyBurn is net cash burned per month in cents; 0 when not losing cash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyBurn;

  /// Months is the window length in whole months used to normalize MRR and burn.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? months;

  /// MRR is monthly recurring revenue in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrr;

  /// NetIncome is Revenue − Burn, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? netIncome;

  /// Period is the human window label, e.g. \"2026-07\" or \"all-time\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  /// Revenue is recognized revenue in cents over the period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revenue;

  /// RunwayMonths is Cash / MonthlyBurn; -1 means infinite (the org is not burning).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? runwayMonths;

  /// To is the RFC3339 end of the reporting window, inclusive; absent for up to now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetricsResponse &&
    other.arr == arr &&
    other.burn == burn &&
    other.cash == cash &&
    other.cogs == cogs &&
    other.deferredRevenue == deferredRevenue &&
    _deepEquality.equals(other.figures, figures) &&
    other.from == from &&
    other.grossMarginBps == grossMarginBps &&
    other.grossProfit == grossProfit &&
    other.monthlyBurn == monthlyBurn &&
    other.months == months &&
    other.mrr == mrr &&
    other.netIncome == netIncome &&
    other.period == period &&
    other.revenue == revenue &&
    other.runwayMonths == runwayMonths &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arr == null ? 0 : arr!.hashCode) +
    (burn == null ? 0 : burn!.hashCode) +
    (cash == null ? 0 : cash!.hashCode) +
    (cogs == null ? 0 : cogs!.hashCode) +
    (deferredRevenue == null ? 0 : deferredRevenue!.hashCode) +
    (figures.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (grossMarginBps == null ? 0 : grossMarginBps!.hashCode) +
    (grossProfit == null ? 0 : grossProfit!.hashCode) +
    (monthlyBurn == null ? 0 : monthlyBurn!.hashCode) +
    (months == null ? 0 : months!.hashCode) +
    (mrr == null ? 0 : mrr!.hashCode) +
    (netIncome == null ? 0 : netIncome!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (runwayMonths == null ? 0 : runwayMonths!.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'MetricsResponse[arr=$arr, burn=$burn, cash=$cash, cogs=$cogs, deferredRevenue=$deferredRevenue, figures=$figures, from=$from, grossMarginBps=$grossMarginBps, grossProfit=$grossProfit, monthlyBurn=$monthlyBurn, months=$months, mrr=$mrr, netIncome=$netIncome, period=$period, revenue=$revenue, runwayMonths=$runwayMonths, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.arr != null) {
      json[r'arr'] = this.arr;
    } else {
      json[r'arr'] = null;
    }
    if (this.burn != null) {
      json[r'burn'] = this.burn;
    } else {
      json[r'burn'] = null;
    }
    if (this.cash != null) {
      json[r'cash'] = this.cash;
    } else {
      json[r'cash'] = null;
    }
    if (this.cogs != null) {
      json[r'cogs'] = this.cogs;
    } else {
      json[r'cogs'] = null;
    }
    if (this.deferredRevenue != null) {
      json[r'deferredRevenue'] = this.deferredRevenue;
    } else {
      json[r'deferredRevenue'] = null;
    }
      json[r'figures'] = this.figures;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.grossMarginBps != null) {
      json[r'grossMarginBps'] = this.grossMarginBps;
    } else {
      json[r'grossMarginBps'] = null;
    }
    if (this.grossProfit != null) {
      json[r'grossProfit'] = this.grossProfit;
    } else {
      json[r'grossProfit'] = null;
    }
    if (this.monthlyBurn != null) {
      json[r'monthlyBurn'] = this.monthlyBurn;
    } else {
      json[r'monthlyBurn'] = null;
    }
    if (this.months != null) {
      json[r'months'] = this.months;
    } else {
      json[r'months'] = null;
    }
    if (this.mrr != null) {
      json[r'mrr'] = this.mrr;
    } else {
      json[r'mrr'] = null;
    }
    if (this.netIncome != null) {
      json[r'netIncome'] = this.netIncome;
    } else {
      json[r'netIncome'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
    if (this.runwayMonths != null) {
      json[r'runwayMonths'] = this.runwayMonths;
    } else {
      json[r'runwayMonths'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [MetricsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetricsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetricsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetricsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetricsResponse(
        arr: mapValueOfType<int>(json, r'arr'),
        burn: mapValueOfType<int>(json, r'burn'),
        cash: mapValueOfType<int>(json, r'cash'),
        cogs: mapValueOfType<int>(json, r'cogs'),
        deferredRevenue: mapValueOfType<int>(json, r'deferredRevenue'),
        figures: Figure.listFromJson(json[r'figures']),
        from: mapValueOfType<String>(json, r'from'),
        grossMarginBps: mapValueOfType<int>(json, r'grossMarginBps'),
        grossProfit: mapValueOfType<int>(json, r'grossProfit'),
        monthlyBurn: mapValueOfType<int>(json, r'monthlyBurn'),
        months: mapValueOfType<int>(json, r'months'),
        mrr: mapValueOfType<int>(json, r'mrr'),
        netIncome: mapValueOfType<int>(json, r'netIncome'),
        period: mapValueOfType<String>(json, r'period'),
        revenue: mapValueOfType<int>(json, r'revenue'),
        runwayMonths: mapValueOfType<int>(json, r'runwayMonths'),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<MetricsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetricsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetricsResponse> mapFromJson(dynamic json) {
    final map = <String, MetricsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetricsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetricsResponse-objects as value to a dart map
  static Map<String, List<MetricsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetricsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetricsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

