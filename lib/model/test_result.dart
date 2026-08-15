//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TestResult {
  /// Returns a new [TestResult] instance.
  TestResult({
    this.delivered,
    this.durationMs,
    this.error,
    this.httpStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? delivered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? durationMs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? httpStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestResult &&
    other.delivered == delivered &&
    other.durationMs == durationMs &&
    other.error == error &&
    other.httpStatus == httpStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (delivered == null ? 0 : delivered!.hashCode) +
    (durationMs == null ? 0 : durationMs!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (httpStatus == null ? 0 : httpStatus!.hashCode);

  @override
  String toString() => 'TestResult[delivered=$delivered, durationMs=$durationMs, error=$error, httpStatus=$httpStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.durationMs != null) {
      json[r'durationMs'] = this.durationMs;
    } else {
      json[r'durationMs'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.httpStatus != null) {
      json[r'httpStatus'] = this.httpStatus;
    } else {
      json[r'httpStatus'] = null;
    }
    return json;
  }

  /// Returns a new [TestResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestResult(
        delivered: mapValueOfType<bool>(json, r'delivered'),
        durationMs: mapValueOfType<int>(json, r'durationMs'),
        error: mapValueOfType<String>(json, r'error'),
        httpStatus: mapValueOfType<int>(json, r'httpStatus'),
      );
    }
    return null;
  }

  static List<TestResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestResult> mapFromJson(dynamic json) {
    final map = <String, TestResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestResult-objects as value to a dart map
  static Map<String, List<TestResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

