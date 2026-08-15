//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SourceStatus {
  /// Returns a new [SourceStatus] instance.
  SourceStatus({
    this.at,
    this.error,
    this.name,
    this.ok,
    this.rows,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SourceStatus &&
    other.at == at &&
    other.error == error &&
    other.name == name &&
    other.ok == ok &&
    other.rows == rows;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (rows == null ? 0 : rows!.hashCode);

  @override
  String toString() => 'SourceStatus[at=$at, error=$error, name=$name, ok=$ok, rows=$rows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.rows != null) {
      json[r'rows'] = this.rows;
    } else {
      json[r'rows'] = null;
    }
    return json;
  }

  /// Returns a new [SourceStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SourceStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SourceStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SourceStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SourceStatus(
        at: mapValueOfType<String>(json, r'at'),
        error: mapValueOfType<String>(json, r'error'),
        name: mapValueOfType<String>(json, r'name'),
        ok: mapValueOfType<bool>(json, r'ok'),
        rows: mapValueOfType<int>(json, r'rows'),
      );
    }
    return null;
  }

  static List<SourceStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SourceStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SourceStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SourceStatus> mapFromJson(dynamic json) {
    final map = <String, SourceStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SourceStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SourceStatus-objects as value to a dart map
  static Map<String, List<SourceStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SourceStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SourceStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

