//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yHostListRecord {
  /// Returns a new [O11yHostListRecord] instance.
  O11yHostListRecord({
    this.active,
    this.cpu,
    this.hostName,
    this.load15,
    this.memory,
    this.meta = const {},
    this.os,
    this.wait,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cpu;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? load15;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? memory;

  Map<String, String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? wait;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yHostListRecord &&
    other.active == active &&
    other.cpu == cpu &&
    other.hostName == hostName &&
    other.load15 == load15 &&
    other.memory == memory &&
    _deepEquality.equals(other.meta, meta) &&
    other.os == os &&
    other.wait == wait;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (cpu == null ? 0 : cpu!.hashCode) +
    (hostName == null ? 0 : hostName!.hashCode) +
    (load15 == null ? 0 : load15!.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (meta.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (wait == null ? 0 : wait!.hashCode);

  @override
  String toString() => 'O11yHostListRecord[active=$active, cpu=$cpu, hostName=$hostName, load15=$load15, memory=$memory, meta=$meta, os=$os, wait=$wait]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.cpu != null) {
      json[r'cpu'] = this.cpu;
    } else {
      json[r'cpu'] = null;
    }
    if (this.hostName != null) {
      json[r'hostName'] = this.hostName;
    } else {
      json[r'hostName'] = null;
    }
    if (this.load15 != null) {
      json[r'load15'] = this.load15;
    } else {
      json[r'load15'] = null;
    }
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.wait != null) {
      json[r'wait'] = this.wait;
    } else {
      json[r'wait'] = null;
    }
    return json;
  }

  /// Returns a new [O11yHostListRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yHostListRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yHostListRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yHostListRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yHostListRecord(
        active: mapValueOfType<bool>(json, r'active'),
        cpu: num.parse('${json[r'cpu']}'),
        hostName: mapValueOfType<String>(json, r'hostName'),
        load15: num.parse('${json[r'load15']}'),
        memory: num.parse('${json[r'memory']}'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        os: mapValueOfType<String>(json, r'os'),
        wait: num.parse('${json[r'wait']}'),
      );
    }
    return null;
  }

  static List<O11yHostListRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yHostListRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yHostListRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yHostListRecord> mapFromJson(dynamic json) {
    final map = <String, O11yHostListRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yHostListRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yHostListRecord-objects as value to a dart map
  static Map<String, List<O11yHostListRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yHostListRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yHostListRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

