//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageAnalyticsView {
  /// Returns a new [UsageAnalyticsView] instance.
  UsageAnalyticsView({
    this.end,
    this.export_,
    this.plan,
    this.providers,
    this.range,
    this.retentionDays,
    this.scope,
    this.start,
  });

  /// End is the window's exclusive end, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Export is whether the resolved plan allows exporting these rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? export_;

  /// Plan echoes the plan id the entitlement was resolved from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  /// Providers is the per-provider roll-up over the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProviderBreakdown? providers;

  /// Range is the label that was ASKED for. A plan whose retention is shorter than that window is served the retention instead, so read start and end for the window the rows actually cover and retentionDays for the reason — on a clamped read the label is longer than what was served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// RetentionDays is how far back the resolved plan allows reading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retentionDays;

  /// Scope is the tenant the rows were read under — the validated principal's org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UsageScope? scope;

  /// Start is the window's inclusive start, RFC3339 UTC, AFTER the retention clamp — so it may be later than the start that was asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageAnalyticsView &&
    other.end == end &&
    other.export_ == export_ &&
    other.plan == plan &&
    other.providers == providers &&
    other.range == range &&
    other.retentionDays == retentionDays &&
    other.scope == scope &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (export_ == null ? 0 : export_!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (providers == null ? 0 : providers!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (retentionDays == null ? 0 : retentionDays!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'UsageAnalyticsView[end=$end, export_=$export_, plan=$plan, providers=$providers, range=$range, retentionDays=$retentionDays, scope=$scope, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.export_ != null) {
      json[r'export'] = this.export_;
    } else {
      json[r'export'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.providers != null) {
      json[r'providers'] = this.providers;
    } else {
      json[r'providers'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.retentionDays != null) {
      json[r'retentionDays'] = this.retentionDays;
    } else {
      json[r'retentionDays'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [UsageAnalyticsView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageAnalyticsView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageAnalyticsView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageAnalyticsView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageAnalyticsView(
        end: mapValueOfType<String>(json, r'end'),
        export_: mapValueOfType<bool>(json, r'export'),
        plan: mapValueOfType<String>(json, r'plan'),
        providers: ProviderBreakdown.fromJson(json[r'providers']),
        range: mapValueOfType<String>(json, r'range'),
        retentionDays: mapValueOfType<int>(json, r'retentionDays'),
        scope: UsageScope.fromJson(json[r'scope']),
        start: mapValueOfType<String>(json, r'start'),
      );
    }
    return null;
  }

  static List<UsageAnalyticsView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageAnalyticsView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageAnalyticsView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageAnalyticsView> mapFromJson(dynamic json) {
    final map = <String, UsageAnalyticsView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageAnalyticsView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageAnalyticsView-objects as value to a dart map
  static Map<String, List<UsageAnalyticsView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageAnalyticsView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageAnalyticsView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

