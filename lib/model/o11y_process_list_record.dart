//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yProcessListRecord {
  /// Returns a new [O11yProcessListRecord] instance.
  O11yProcessListRecord({
    this.meta = const {},
    this.processCMD,
    this.processCMDLine,
    this.processCPU,
    this.processID,
    this.processMemory,
    this.processName,
  });
  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processCMD;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processCMDLine;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? processCPU;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? processMemory;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? processName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yProcessListRecord &&
    _deepEquality.equals(other.meta, meta) &&
    other.processCMD == processCMD &&
    other.processCMDLine == processCMDLine &&
    other.processCPU == processCPU &&
    other.processID == processID &&
    other.processMemory == processMemory &&
    other.processName == processName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (meta.hashCode) +
    (processCMD == null ? 0 : processCMD!.hashCode) +
    (processCMDLine == null ? 0 : processCMDLine!.hashCode) +
    (processCPU == null ? 0 : processCPU!.hashCode) +
    (processID == null ? 0 : processID!.hashCode) +
    (processMemory == null ? 0 : processMemory!.hashCode) +
    (processName == null ? 0 : processName!.hashCode);

  @override
  String toString() => 'O11yProcessListRecord[meta=$meta, processCMD=$processCMD, processCMDLine=$processCMDLine, processCPU=$processCPU, processID=$processID, processMemory=$processMemory, processName=$processName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'meta'] = this.meta;
    if (this.processCMD != null) {
      json[r'processCMD'] = this.processCMD;
    } else {
      json[r'processCMD'] = null;
    }
    if (this.processCMDLine != null) {
      json[r'processCMDLine'] = this.processCMDLine;
    } else {
      json[r'processCMDLine'] = null;
    }
    if (this.processCPU != null) {
      json[r'processCPU'] = this.processCPU;
    } else {
      json[r'processCPU'] = null;
    }
    if (this.processID != null) {
      json[r'processID'] = this.processID;
    } else {
      json[r'processID'] = null;
    }
    if (this.processMemory != null) {
      json[r'processMemory'] = this.processMemory;
    } else {
      json[r'processMemory'] = null;
    }
    if (this.processName != null) {
      json[r'processName'] = this.processName;
    } else {
      json[r'processName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yProcessListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yProcessListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yProcessListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yProcessListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yProcessListRecord(
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        processCMD: mapValueOfType<String>(json, r'processCMD'),
        processCMDLine: mapValueOfType<String>(json, r'processCMDLine'),
        processCPU: mapValueOfType<double>(json, r'processCPU'),
        processID: mapValueOfType<String>(json, r'processID'),
        processMemory: mapValueOfType<double>(json, r'processMemory'),
        processName: mapValueOfType<String>(json, r'processName'),
      );
    }
    return null;
  }

  static List<O11yProcessListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yProcessListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yProcessListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yProcessListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yProcessListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yProcessListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yProcessListRecord-objects as value to a dart map
  static Map<String, List<O11yProcessListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yProcessListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yProcessListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

