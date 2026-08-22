//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yNodes {
  /// Returns a new [O11yNodes] instance.
  O11yNodes({
    this.endTimeBeforeRetention,
    this.records = const [],
    this.total,
    this.type,
    this.warning,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? endTimeBeforeRetention;

  List<O11yNodeRecord> records;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  Object? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yQueryWarnData? warning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yNodes &&
    other.endTimeBeforeRetention == endTimeBeforeRetention &&
    _deepEquality.equals(other.records, records) &&
    other.total == total &&
    other.type == type &&
    other.warning == warning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endTimeBeforeRetention == null ? 0 : endTimeBeforeRetention!.hashCode) +
    (records.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (warning == null ? 0 : warning!.hashCode);

  @override
  String toString() => 'O11yNodes[endTimeBeforeRetention=$endTimeBeforeRetention, records=$records, total=$total, type=$type, warning=$warning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.endTimeBeforeRetention != null) {
      json[r'endTimeBeforeRetention'] = this.endTimeBeforeRetention;
    } else {
      json[r'endTimeBeforeRetention'] = null;
    }
      json[r'records'] = this.records;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.warning != null) {
      json[r'warning'] = this.warning;
    } else {
      json[r'warning'] = null;
    }
    return json;
  }

  /// Returns a new [O11yNodes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yNodes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yNodes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yNodes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yNodes(
        endTimeBeforeRetention: mapValueOfType<bool>(json, r'endTimeBeforeRetention'),
        records: O11yNodeRecord.listFromJson(json[r'records']),
        total: mapValueOfType<int>(json, r'total'),
        type: mapValueOfType<Object>(json, r'type'),
        warning: O11yQueryWarnData.fromJson(json[r'warning']),
      );
    }
    return null;
  }

  static List<O11yNodes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yNodes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yNodes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yNodes> mapFromJson(dynamic json) {
    final map = <String, O11yNodes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yNodes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yNodes-objects as value to a dart map
  static Map<String, List<O11yNodes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yNodes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yNodes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

