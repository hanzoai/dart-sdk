//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Overview {
  /// Returns a new [Overview] instance.
  Overview({
    this.commerce,
    this.end,
    this.interval,
    this.llm,
    this.range,
    this.scope,
    this.start,
    this.web,
  });

  /// Commerce is the orders/revenue lens over product events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CommerceOverview? commerce;

  /// End is the window's exclusive upper bound, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Interval is the bucket width the window implies: hour or day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  /// LLM is the LLM usage lens — real per-org data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LLMOverview? llm;

  /// Range is the window that was actually applied: 24h, 7d, 30d or custom.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Scope names the tenant these numbers belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Scope? scope;

  /// Start is the window's inclusive lower bound, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// Web is the web-traffic lens over product events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebOverview? web;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Overview &&
    other.commerce == commerce &&
    other.end == end &&
    other.interval == interval &&
    other.llm == llm &&
    other.range == range &&
    other.scope == scope &&
    other.start == start &&
    other.web == web;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commerce == null ? 0 : commerce!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (llm == null ? 0 : llm!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (web == null ? 0 : web!.hashCode);

  @override
  String toString() => 'Overview[commerce=$commerce, end=$end, interval=$interval, llm=$llm, range=$range, scope=$scope, start=$start, web=$web]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.commerce != null) {
      json[r'commerce'] = this.commerce;
    } else {
      json[r'commerce'] = null;
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
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.web != null) {
      json[r'web'] = this.web;
    } else {
      json[r'web'] = null;
    }
    return json;
  }

  /// Returns a new [Overview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Overview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Overview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Overview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Overview(
        commerce: CommerceOverview.fromJson(json[r'commerce']),
        end: mapValueOfType<String>(json, r'end'),
        interval: mapValueOfType<String>(json, r'interval'),
        llm: LLMOverview.fromJson(json[r'llm']),
        range: mapValueOfType<String>(json, r'range'),
        scope: Scope.fromJson(json[r'scope']),
        start: mapValueOfType<String>(json, r'start'),
        web: WebOverview.fromJson(json[r'web']),
      );
    }
    return null;
  }

  static List<Overview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Overview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Overview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Overview> mapFromJson(dynamic json) {
    final map = <String, Overview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Overview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Overview-objects as value to a dart map
  static Map<String, List<Overview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Overview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Overview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

