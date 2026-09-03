//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yService {
  /// Returns a new [O11yO11yService] instance.
  O11yO11yService({
    this.avgDuration,
    this.callRate,
    this.dataWarning,
    this.errorRate,
    this.fourXXRate,
    this.num4XX,
    this.numCalls,
    this.numErrors,
    this.p99,
    this.serviceName,
  });
  /// AvgDuration is their average latency, nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? avgDuration;

  /// CallRate is calls per second over the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? callRate;

  /// DataWarning carries the entry-point operations the numbers were computed over.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yServiceWarning? dataWarning;

  /// ErrorRate is the percentage of calls that errored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? errorRate;

  /// FourXXRate is the percentage of calls that answered 4xx.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? fourXXRate;

  /// Num4XX is how many of the calls answered 4xx.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? num4XX;

  /// NumCalls is how many entry-point spans landed in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numCalls;

  /// NumErrors is how many of the calls errored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numErrors;

  /// Percentile99 is the p99 latency of its entry-point spans, nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p99;

  /// ServiceName is the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yService &&
    other.avgDuration == avgDuration &&
    other.callRate == callRate &&
    other.dataWarning == dataWarning &&
    other.errorRate == errorRate &&
    other.fourXXRate == fourXXRate &&
    other.num4XX == num4XX &&
    other.numCalls == numCalls &&
    other.numErrors == numErrors &&
    other.p99 == p99 &&
    other.serviceName == serviceName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgDuration == null ? 0 : avgDuration!.hashCode) +
    (callRate == null ? 0 : callRate!.hashCode) +
    (dataWarning == null ? 0 : dataWarning!.hashCode) +
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (fourXXRate == null ? 0 : fourXXRate!.hashCode) +
    (num4XX == null ? 0 : num4XX!.hashCode) +
    (numCalls == null ? 0 : numCalls!.hashCode) +
    (numErrors == null ? 0 : numErrors!.hashCode) +
    (p99 == null ? 0 : p99!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode);

  @override
  String toString() => 'O11yO11yService[avgDuration=$avgDuration, callRate=$callRate, dataWarning=$dataWarning, errorRate=$errorRate, fourXXRate=$fourXXRate, num4XX=$num4XX, numCalls=$numCalls, numErrors=$numErrors, p99=$p99, serviceName=$serviceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgDuration != null) {
      json[r'avgDuration'] = this.avgDuration;
    } else {
      json[r'avgDuration'] = null;
    }
    if (this.callRate != null) {
      json[r'callRate'] = this.callRate;
    } else {
      json[r'callRate'] = null;
    }
    if (this.dataWarning != null) {
      json[r'dataWarning'] = this.dataWarning;
    } else {
      json[r'dataWarning'] = null;
    }
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.fourXXRate != null) {
      json[r'fourXXRate'] = this.fourXXRate;
    } else {
      json[r'fourXXRate'] = null;
    }
    if (this.num4XX != null) {
      json[r'num4XX'] = this.num4XX;
    } else {
      json[r'num4XX'] = null;
    }
    if (this.numCalls != null) {
      json[r'numCalls'] = this.numCalls;
    } else {
      json[r'numCalls'] = null;
    }
    if (this.numErrors != null) {
      json[r'numErrors'] = this.numErrors;
    } else {
      json[r'numErrors'] = null;
    }
    if (this.p99 != null) {
      json[r'p99'] = this.p99;
    } else {
      json[r'p99'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yService(
        avgDuration: mapValueOfType<double>(json, r'avgDuration'),
        callRate: mapValueOfType<double>(json, r'callRate'),
        dataWarning: O11yO11yServiceWarning.fromJson(json[r'dataWarning']),
        errorRate: mapValueOfType<double>(json, r'errorRate'),
        fourXXRate: mapValueOfType<double>(json, r'fourXXRate'),
        num4XX: mapValueOfType<int>(json, r'num4XX'),
        numCalls: mapValueOfType<int>(json, r'numCalls'),
        numErrors: mapValueOfType<int>(json, r'numErrors'),
        p99: mapValueOfType<double>(json, r'p99'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
      );
    }
    return null;
  }

  static List<O11yO11yService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yService> mapFromJson(dynamic json) {
    final map = <String, O11yO11yService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yService-objects as value to a dart map
  static Map<String, List<O11yO11yService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

