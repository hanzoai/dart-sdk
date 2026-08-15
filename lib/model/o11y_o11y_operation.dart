//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yOperation {
  /// Returns a new [O11yO11yOperation] instance.
  O11yO11yOperation({
    this.errorCount,
    this.name,
    this.numCalls,
    this.p50,
    this.p95,
    this.p99,
  });

  /// ErrorCount is how many of those runs errored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errorCount;

  /// Name is the operation (span name).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// NumCalls is how many times it ran in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numCalls;

  /// P50 is its median latency, nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p50;

  /// P95 is its p95 latency, nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p95;

  /// P99 is its p99 latency, nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? p99;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yOperation &&
    other.errorCount == errorCount &&
    other.name == name &&
    other.numCalls == numCalls &&
    other.p50 == p50 &&
    other.p95 == p95 &&
    other.p99 == p99;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorCount == null ? 0 : errorCount!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (numCalls == null ? 0 : numCalls!.hashCode) +
    (p50 == null ? 0 : p50!.hashCode) +
    (p95 == null ? 0 : p95!.hashCode) +
    (p99 == null ? 0 : p99!.hashCode);

  @override
  String toString() => 'O11yO11yOperation[errorCount=$errorCount, name=$name, numCalls=$numCalls, p50=$p50, p95=$p95, p99=$p99]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errorCount != null) {
      json[r'errorCount'] = this.errorCount;
    } else {
      json[r'errorCount'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.numCalls != null) {
      json[r'numCalls'] = this.numCalls;
    } else {
      json[r'numCalls'] = null;
    }
    if (this.p50 != null) {
      json[r'p50'] = this.p50;
    } else {
      json[r'p50'] = null;
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
    return json;
  }

  /// Returns a new [O11yO11yOperation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yOperation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yOperation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yOperation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yOperation(
        errorCount: mapValueOfType<int>(json, r'errorCount'),
        name: mapValueOfType<String>(json, r'name'),
        numCalls: mapValueOfType<int>(json, r'numCalls'),
        p50: num.parse('${json[r'p50']}'),
        p95: num.parse('${json[r'p95']}'),
        p99: num.parse('${json[r'p99']}'),
      );
    }
    return null;
  }

  static List<O11yO11yOperation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yOperation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yOperation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yOperation> mapFromJson(dynamic json) {
    final map = <String, O11yO11yOperation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yOperation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yOperation-objects as value to a dart map
  static Map<String, List<O11yO11yOperation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yOperation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yOperation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

