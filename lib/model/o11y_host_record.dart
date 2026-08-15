//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yHostRecord {
  /// Returns a new [O11yHostRecord] instance.
  O11yHostRecord({
    this.activeHostCount,
    this.cpu,
    this.diskUsage,
    this.hostName,
    this.inactiveHostCount,
    this.load15,
    this.memory,
    this.meta = const {},
    this.status,
    this.wait,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activeHostCount;

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
  num? diskUsage;

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
  int? inactiveHostCount;

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

  Object? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? wait;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yHostRecord &&
    other.activeHostCount == activeHostCount &&
    other.cpu == cpu &&
    other.diskUsage == diskUsage &&
    other.hostName == hostName &&
    other.inactiveHostCount == inactiveHostCount &&
    other.load15 == load15 &&
    other.memory == memory &&
    _deepEquality.equals(other.meta, meta) &&
    other.status == status &&
    other.wait == wait;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeHostCount == null ? 0 : activeHostCount!.hashCode) +
    (cpu == null ? 0 : cpu!.hashCode) +
    (diskUsage == null ? 0 : diskUsage!.hashCode) +
    (hostName == null ? 0 : hostName!.hashCode) +
    (inactiveHostCount == null ? 0 : inactiveHostCount!.hashCode) +
    (load15 == null ? 0 : load15!.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (meta.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (wait == null ? 0 : wait!.hashCode);

  @override
  String toString() => 'O11yHostRecord[activeHostCount=$activeHostCount, cpu=$cpu, diskUsage=$diskUsage, hostName=$hostName, inactiveHostCount=$inactiveHostCount, load15=$load15, memory=$memory, meta=$meta, status=$status, wait=$wait]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activeHostCount != null) {
      json[r'activeHostCount'] = this.activeHostCount;
    } else {
      json[r'activeHostCount'] = null;
    }
    if (this.cpu != null) {
      json[r'cpu'] = this.cpu;
    } else {
      json[r'cpu'] = null;
    }
    if (this.diskUsage != null) {
      json[r'diskUsage'] = this.diskUsage;
    } else {
      json[r'diskUsage'] = null;
    }
    if (this.hostName != null) {
      json[r'hostName'] = this.hostName;
    } else {
      json[r'hostName'] = null;
    }
    if (this.inactiveHostCount != null) {
      json[r'inactiveHostCount'] = this.inactiveHostCount;
    } else {
      json[r'inactiveHostCount'] = null;
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.wait != null) {
      json[r'wait'] = this.wait;
    } else {
      json[r'wait'] = null;
    }
    return json;
  }

  /// Returns a new [O11yHostRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yHostRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yHostRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yHostRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yHostRecord(
        activeHostCount: mapValueOfType<int>(json, r'activeHostCount'),
        cpu: num.parse('${json[r'cpu']}'),
        diskUsage: num.parse('${json[r'diskUsage']}'),
        hostName: mapValueOfType<String>(json, r'hostName'),
        inactiveHostCount: mapValueOfType<int>(json, r'inactiveHostCount'),
        load15: num.parse('${json[r'load15']}'),
        memory: num.parse('${json[r'memory']}'),
        meta: mapCastOfType<String, String>(json, r'meta') ?? const {},
        status: mapValueOfType<Object>(json, r'status'),
        wait: num.parse('${json[r'wait']}'),
      );
    }
    return null;
  }

  static List<O11yHostRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yHostRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yHostRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yHostRecord> mapFromJson(dynamic json) {
    final map = <String, O11yHostRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yHostRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yHostRecord-objects as value to a dart map
  static Map<String, List<O11yHostRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yHostRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yHostRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

