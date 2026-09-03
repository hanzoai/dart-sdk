//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SampleView {
  /// Returns a new [SampleView] instance.
  SampleView({
    this.at,
    this.costCents,
    this.cpus,
    this.gpuModel,
    this.gpuUtil,
    this.gpus,
    this.host,
    this.kind,
    this.load1,
    this.load5,
    this.load15,
    this.memFree,
    this.memUsed,
    this.memory,
    this.source_,
    this.unit,
  });
  /// At is when the reading was MEASURED, RFC 3339 in UTC — the x-axis a chart plots against. The series is returned oldest first, so it only increases.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// CostCents is what this unit resold for over the hour the reading falls in, in whole US cents. 0 means UNPRICED, not free: the operator's own machines — a linked run-target, a dialed-in BYO worker — are metered for utilization and never resold, so only a priced source ever fills it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// CPUs is logical cores. The static capability rides every row on purpose: a chart can size load against cores without joining a registry whose row may since have been rewritten or the unit deregistered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpus;

  /// GPUModel names the representative accelerator (\"GB10\"); GPUs carries how many.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gpuModel;

  /// GPUUtil is aggregate accelerator utilization as a FRACTION of 1 — 0.42 is 42% busy. Anything a reporter sends outside 0..1 is clamped into it on write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? gpuUtil;

  /// GPUs is how many accelerators the reading covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gpus;

  /// Host is the hostname the unit reported at the time of the reading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// Kind is what the measured unit is: laptop, cloud, gpu, cluster, machine or worker.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Load1 is the 1-minute load average — runnable processes, not a percentage.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? load1;

  /// Load5 is the 5-minute load average, the same units as Load1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? load5;

  /// Load15 is the 15-minute load average, the same units as Load1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? load15;

  /// MemFree is host memory available, in BYTES, as reported rather than derived.
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

  /// Memory is total system RAM in BYTES at the time of the reading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memory;

  /// Source is the plane that reported the reading: \"agent\", \"byo\" or \"visor\" — the same vocabulary the board's rows carry, and what ?source= narrows on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Unit is the source's own id for the measured unit. With Source it is the key the chart groups by, and the key the board joins a unit's latest reading on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SampleView &&
    other.at == at &&
    other.costCents == costCents &&
    other.cpus == cpus &&
    other.gpuModel == gpuModel &&
    other.gpuUtil == gpuUtil &&
    other.gpus == gpus &&
    other.host == host &&
    other.kind == kind &&
    other.load1 == load1 &&
    other.load5 == load5 &&
    other.load15 == load15 &&
    other.memFree == memFree &&
    other.memUsed == memUsed &&
    other.memory == memory &&
    other.source_ == source_ &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (cpus == null ? 0 : cpus!.hashCode) +
    (gpuModel == null ? 0 : gpuModel!.hashCode) +
    (gpuUtil == null ? 0 : gpuUtil!.hashCode) +
    (gpus == null ? 0 : gpus!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (load1 == null ? 0 : load1!.hashCode) +
    (load5 == null ? 0 : load5!.hashCode) +
    (load15 == null ? 0 : load15!.hashCode) +
    (memFree == null ? 0 : memFree!.hashCode) +
    (memUsed == null ? 0 : memUsed!.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'SampleView[at=$at, costCents=$costCents, cpus=$cpus, gpuModel=$gpuModel, gpuUtil=$gpuUtil, gpus=$gpus, host=$host, kind=$kind, load1=$load1, load5=$load5, load15=$load15, memFree=$memFree, memUsed=$memUsed, memory=$memory, source_=$source_, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.cpus != null) {
      json[r'cpus'] = this.cpus;
    } else {
      json[r'cpus'] = null;
    }
    if (this.gpuModel != null) {
      json[r'gpuModel'] = this.gpuModel;
    } else {
      json[r'gpuModel'] = null;
    }
    if (this.gpuUtil != null) {
      json[r'gpuUtil'] = this.gpuUtil;
    } else {
      json[r'gpuUtil'] = null;
    }
    if (this.gpus != null) {
      json[r'gpus'] = this.gpus;
    } else {
      json[r'gpus'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
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
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [SampleView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SampleView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SampleView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SampleView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SampleView(
        at: mapValueOfType<String>(json, r'at'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        cpus: mapValueOfType<int>(json, r'cpus'),
        gpuModel: mapValueOfType<String>(json, r'gpuModel'),
        gpuUtil: mapValueOfType<double>(json, r'gpuUtil'),
        gpus: mapValueOfType<int>(json, r'gpus'),
        host: mapValueOfType<String>(json, r'host'),
        kind: mapValueOfType<String>(json, r'kind'),
        load1: mapValueOfType<double>(json, r'load1'),
        load5: mapValueOfType<double>(json, r'load5'),
        load15: mapValueOfType<double>(json, r'load15'),
        memFree: mapValueOfType<int>(json, r'memFree'),
        memUsed: mapValueOfType<int>(json, r'memUsed'),
        memory: mapValueOfType<int>(json, r'memory'),
        source_: mapValueOfType<String>(json, r'source'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<SampleView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SampleView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SampleView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SampleView> mapFromJson(dynamic json) {
    final map = <String, SampleView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SampleView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SampleView-objects as value to a dart map
  static Map<String, List<SampleView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SampleView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SampleView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

