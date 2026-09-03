//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDependency {
  /// Returns a new [O11yO11yDependency] instance.
  O11yO11yDependency({
    this.callCount,
    this.callRate,
    this.child,
    this.errorRate,
    this.p50,
    this.p75,
    this.p90,
    this.p95,
    this.p99,
    this.parent,
  });
  /// CallCount is how many calls crossed the edge in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? callCount;

  /// CallRate is calls per second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? callRate;

  /// Child is the called service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? child;

  /// ErrorRate is the percentage of calls that erred.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? errorRate;

  /// P50 is the median call duration, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p50;

  /// P75 is the 75th-percentile call duration, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p75;

  /// P90 is the 90th-percentile call duration, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p90;

  /// P95 is the 95th-percentile call duration, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p95;

  /// P99 is the 99th-percentile call duration, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p99;

  /// Parent is the calling service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDependency &&
    other.callCount == callCount &&
    other.callRate == callRate &&
    other.child == child &&
    other.errorRate == errorRate &&
    other.p50 == p50 &&
    other.p75 == p75 &&
    other.p90 == p90 &&
    other.p95 == p95 &&
    other.p99 == p99 &&
    other.parent == parent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (callCount == null ? 0 : callCount!.hashCode) +
    (callRate == null ? 0 : callRate!.hashCode) +
    (child == null ? 0 : child!.hashCode) +
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (p50 == null ? 0 : p50!.hashCode) +
    (p75 == null ? 0 : p75!.hashCode) +
    (p90 == null ? 0 : p90!.hashCode) +
    (p95 == null ? 0 : p95!.hashCode) +
    (p99 == null ? 0 : p99!.hashCode) +
    (parent == null ? 0 : parent!.hashCode);

  @override
  String toString() => 'O11yO11yDependency[callCount=$callCount, callRate=$callRate, child=$child, errorRate=$errorRate, p50=$p50, p75=$p75, p90=$p90, p95=$p95, p99=$p99, parent=$parent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.callCount != null) {
      json[r'callCount'] = this.callCount;
    } else {
      json[r'callCount'] = null;
    }
    if (this.callRate != null) {
      json[r'callRate'] = this.callRate;
    } else {
      json[r'callRate'] = null;
    }
    if (this.child != null) {
      json[r'child'] = this.child;
    } else {
      json[r'child'] = null;
    }
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.p50 != null) {
      json[r'p50'] = this.p50;
    } else {
      json[r'p50'] = null;
    }
    if (this.p75 != null) {
      json[r'p75'] = this.p75;
    } else {
      json[r'p75'] = null;
    }
    if (this.p90 != null) {
      json[r'p90'] = this.p90;
    } else {
      json[r'p90'] = null;
    }
    if (this.p95 != null) {
      json[r'p95'] = this.p95;
    } else {
      json[r'p95'] = null;
    }
    if (this.p99 != null) {
      json[r'p99'] = this.p99;
    } else {
      json[r'p99'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yDependency] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDependency? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDependency[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDependency[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDependency(
        callCount: mapValueOfType<int>(json, r'callCount'),
        callRate: mapValueOfType<double>(json, r'callRate'),
        child: mapValueOfType<String>(json, r'child'),
        errorRate: mapValueOfType<double>(json, r'errorRate'),
        p50: mapValueOfType<double>(json, r'p50'),
        p75: mapValueOfType<double>(json, r'p75'),
        p90: mapValueOfType<double>(json, r'p90'),
        p95: mapValueOfType<double>(json, r'p95'),
        p99: mapValueOfType<double>(json, r'p99'),
        parent: mapValueOfType<String>(json, r'parent'),
      );
    }
    return null;
  }

  static List<O11yO11yDependency> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDependency>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDependency.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDependency> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDependency>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDependency.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDependency-objects as value to a dart map
  static Map<String, List<O11yO11yDependency>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDependency>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDependency.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

