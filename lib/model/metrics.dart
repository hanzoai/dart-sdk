//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Metrics {
  /// Returns a new [Metrics] instance.
  Metrics({
    this.at,
    this.gpuUtil,
    this.load1,
    this.load5,
    this.load15,
    this.memFree,
    this.memUsed,
  });
  /// unix seconds, server-stamped
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? at;

  /// 0..1 aggregate utilization
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? gpuUtil;

  /// Load1 is the machine's own one-minute load average — a count of runnable and uninterruptible tasks, NOT a percentage and NOT already divided by core count, so it is read against Spec.CPUs: 8.0 is idle on 16 cores and swamped on 4. Coerced finite and non-negative on write, so 0 means either genuinely idle or nothing reported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? load1;

  /// Load5 is the same figure averaged over five minutes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? load5;

  /// Load15 is the same figure over fifteen. The three together are what separate a machine that is busy right now from one that has been busy all along — which is the question a dispatcher is really asking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? load15;

  /// bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memFree;

  /// bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memUsed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Metrics &&
    other.at == at &&
    other.gpuUtil == gpuUtil &&
    other.load1 == load1 &&
    other.load5 == load5 &&
    other.load15 == load15 &&
    other.memFree == memFree &&
    other.memUsed == memUsed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (gpuUtil == null ? 0 : gpuUtil!.hashCode) +
    (load1 == null ? 0 : load1!.hashCode) +
    (load5 == null ? 0 : load5!.hashCode) +
    (load15 == null ? 0 : load15!.hashCode) +
    (memFree == null ? 0 : memFree!.hashCode) +
    (memUsed == null ? 0 : memUsed!.hashCode);

  @override
  String toString() => 'Metrics[at=$at, gpuUtil=$gpuUtil, load1=$load1, load5=$load5, load15=$load15, memFree=$memFree, memUsed=$memUsed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.gpuUtil != null) {
      json[r'gpuUtil'] = this.gpuUtil;
    } else {
      json[r'gpuUtil'] = null;
    }
    if (this.load1 != null) {
      json[r'load1'] = this.load1;
    } else {
      json[r'load1'] = null;
    }
    if (this.load5 != null) {
      json[r'load5'] = this.load5;
    } else {
      json[r'load5'] = null;
    }
    if (this.load15 != null) {
      json[r'load15'] = this.load15;
    } else {
      json[r'load15'] = null;
    }
    if (this.memFree != null) {
      json[r'memFree'] = this.memFree;
    } else {
      json[r'memFree'] = null;
    }
    if (this.memUsed != null) {
      json[r'memUsed'] = this.memUsed;
    } else {
      json[r'memUsed'] = null;
    }
    return json;
  }

  /// Returns a new [Metrics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Metrics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Metrics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Metrics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Metrics(
        at: mapValueOfType<int>(json, r'at'),
        gpuUtil: mapValueOfType<double>(json, r'gpuUtil'),
        load1: mapValueOfType<double>(json, r'load1'),
        load5: mapValueOfType<double>(json, r'load5'),
        load15: mapValueOfType<double>(json, r'load15'),
        memFree: mapValueOfType<int>(json, r'memFree'),
        memUsed: mapValueOfType<int>(json, r'memUsed'),
      );
    }
    return null;
  }

  static List<Metrics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Metrics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Metrics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Metrics> mapFromJson(dynamic json) {
    final map = <String, Metrics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Metrics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Metrics-objects as value to a dart map
  static Map<String, List<Metrics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Metrics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Metrics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

