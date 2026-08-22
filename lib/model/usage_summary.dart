//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageSummary {
  /// Returns a new [UsageSummary] instance.
  UsageSummary({
    this.accounts,
    this.end,
    this.interval,
    this.llm,
    this.range,
    this.scope,
    this.sources,
    this.spend,
    this.start,
  });
  /// Accounts is the caller's own linked provider accounts beside the org's Hanzo-routed usage, labelled row by row and never summed together.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Accounts? accounts;

  /// End is the window's exclusive end, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Interval is the bucket width the spend series is gap-filled at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  /// LLM is the org's Hanzo-routed inference totals from the warehouse.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LLM? llm;

  /// Range is the window label that was served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Scope is the tenant and subject the roll-up was answered for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UsageScope? scope;

  /// Sources says which upstreams actually answered, so a zero can be read as \"no data yet\" rather than as a measurement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Sources? sources;

  /// Spend is the categorized cost roll-up from the billing ledger.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Spend? spend;

  /// Start is the window's inclusive start, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageSummary &&
    other.accounts == accounts &&
    other.end == end &&
    other.interval == interval &&
    other.llm == llm &&
    other.range == range &&
    other.scope == scope &&
    other.sources == sources &&
    other.spend == spend &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accounts == null ? 0 : accounts!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (llm == null ? 0 : llm!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (sources == null ? 0 : sources!.hashCode) +
    (spend == null ? 0 : spend!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'UsageSummary[accounts=$accounts, end=$end, interval=$interval, llm=$llm, range=$range, scope=$scope, sources=$sources, spend=$spend, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accounts != null) {
      json[r'accounts'] = this.accounts;
    } else {
      json[r'accounts'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.llm != null) {
      json[r'llm'] = this.llm;
    } else {
      json[r'llm'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.sources != null) {
      json[r'sources'] = this.sources;
    } else {
      json[r'sources'] = null;
    }
    if (this.spend != null) {
      json[r'spend'] = this.spend;
    } else {
      json[r'spend'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [UsageSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageSummary(
        accounts: Accounts.fromJson(json[r'accounts']),
        end: mapValueOfType<String>(json, r'end'),
        interval: mapValueOfType<String>(json, r'interval'),
        llm: LLM.fromJson(json[r'llm']),
        range: mapValueOfType<String>(json, r'range'),
        scope: UsageScope.fromJson(json[r'scope']),
        sources: Sources.fromJson(json[r'sources']),
        spend: Spend.fromJson(json[r'spend']),
        start: mapValueOfType<String>(json, r'start'),
      );
    }
    return null;
  }

  static List<UsageSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageSummary> mapFromJson(dynamic json) {
    final map = <String, UsageSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageSummary-objects as value to a dart map
  static Map<String, List<UsageSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

