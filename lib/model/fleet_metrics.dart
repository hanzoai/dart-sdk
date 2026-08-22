//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FleetMetrics {
  /// Returns a new [FleetMetrics] instance.
  FleetMetrics({
    this.at,
    this.gpuUtil,
    this.load1,
    this.memFree,
    this.memUsed,
  });
  /// At is when this reading was MEASURED, RFC 3339 in UTC — not when the board was built. A console decides staleness by comparing it to now; the board deliberately does not decide that for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// GPUUtil is aggregate accelerator utilization as a FRACTION of 1 — 0.42 is 42% busy, never 42. Across all of the unit's cards, not one of them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? gpuUtil;

  /// Load1 is the host's 1-minute load average — runnable processes, not a percentage, so it is read against the unit's core count and can exceed 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? load1;

  /// MemFree is host memory still available, in BYTES. It is what the source reported, not fleetSpec.Memory minus MemUsed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memFree;

  /// MemUsed is host memory in use, in BYTES.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memUsed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FleetMetrics &&
    other.at == at &&
    other.gpuUtil == gpuUtil &&
    other.load1 == load1 &&
    other.memFree == memFree &&
    other.memUsed == memUsed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (gpuUtil == null ? 0 : gpuUtil!.hashCode) +
    (load1 == null ? 0 : load1!.hashCode) +
    (memFree == null ? 0 : memFree!.hashCode) +
    (memUsed == null ? 0 : memUsed!.hashCode);

  @override
  String toString() => 'FleetMetrics[at=$at, gpuUtil=$gpuUtil, load1=$load1, memFree=$memFree, memUsed=$memUsed]';

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

  /// Returns a new [FleetMetrics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FleetMetrics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FleetMetrics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FleetMetrics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FleetMetrics(
        at: mapValueOfType<String>(json, r'at'),
        gpuUtil: num.parse('${json[r'gpuUtil']}'),
        load1: num.parse('${json[r'load1']}'),
        memFree: mapValueOfType<int>(json, r'memFree'),
        memUsed: mapValueOfType<int>(json, r'memUsed'),
      );
    }
    return null;
  }

  static List<FleetMetrics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FleetMetrics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FleetMetrics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FleetMetrics> mapFromJson(dynamic json) {
    final map = <String, FleetMetrics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FleetMetrics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FleetMetrics-objects as value to a dart map
  static Map<String, List<FleetMetrics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FleetMetrics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FleetMetrics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

