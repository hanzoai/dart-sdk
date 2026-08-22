//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SampleIngest {
  /// Returns a new [SampleIngest] instance.
  SampleIngest({
    this.gpuModel,
    this.gpuUtil,
    this.gpus,
    this.host,
    this.memFree,
    this.memUsed,
    this.unit,
  });
  /// GPUModel names the representative accelerator (\"GB10\"); GPUs carries how many. A heterogeneous host names its first card rather than inventing a summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gpuModel;

  /// GPUUtil is accelerator utilization as a fraction 0..1; the warehouse clamps anything outside that.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? gpuUtil;

  /// GPUs is how many accelerators this reading covers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gpus;

  /// Host is the node's hostname, for display.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// MemFree is host memory still available, in BYTES.
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

  /// Unit is the reporting node's own id — the same id it registered under, and the key the board joins this series onto. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SampleIngest &&
    other.gpuModel == gpuModel &&
    other.gpuUtil == gpuUtil &&
    other.gpus == gpus &&
    other.host == host &&
    other.memFree == memFree &&
    other.memUsed == memUsed &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gpuModel == null ? 0 : gpuModel!.hashCode) +
    (gpuUtil == null ? 0 : gpuUtil!.hashCode) +
    (gpus == null ? 0 : gpus!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (memFree == null ? 0 : memFree!.hashCode) +
    (memUsed == null ? 0 : memUsed!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'SampleIngest[gpuModel=$gpuModel, gpuUtil=$gpuUtil, gpus=$gpus, host=$host, memFree=$memFree, memUsed=$memUsed, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [SampleIngest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SampleIngest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SampleIngest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SampleIngest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SampleIngest(
        gpuModel: mapValueOfType<String>(json, r'gpuModel'),
        gpuUtil: num.parse('${json[r'gpuUtil']}'),
        gpus: mapValueOfType<int>(json, r'gpus'),
        host: mapValueOfType<String>(json, r'host'),
        memFree: mapValueOfType<int>(json, r'memFree'),
        memUsed: mapValueOfType<int>(json, r'memUsed'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<SampleIngest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SampleIngest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SampleIngest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SampleIngest> mapFromJson(dynamic json) {
    final map = <String, SampleIngest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SampleIngest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SampleIngest-objects as value to a dart map
  static Map<String, List<SampleIngest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SampleIngest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SampleIngest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

