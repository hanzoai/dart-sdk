//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunResp {
  /// Returns a new [RunResp] instance.
  RunResp({
    this.error,
    this.ok,
    this.output,
  });
  /// Error is the connector-level failure message when not ok.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Ok reports whether the action ran to completion.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ok;

  /// Output is the action's result when ok. Its shape is the action's own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? output;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunResp &&
    other.error == error &&
    other.ok == ok &&
    other.output == output;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (ok == null ? 0 : ok!.hashCode) +
    (output == null ? 0 : output!.hashCode);

  @override
  String toString() => 'RunResp[error=$error, ok=$ok, output=$output]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.ok != null) {
      json[r'ok'] = this.ok;
    } else {
      json[r'ok'] = null;
    }
    if (this.output != null) {
      json[r'output'] = this.output;
    } else {
      json[r'output'] = null;
    }
    return json;
  }

  /// Returns a new [RunResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunResp(
        error: mapValueOfType<String>(json, r'error'),
        ok: mapValueOfType<bool>(json, r'ok'),
        output: mapValueOfType<Object>(json, r'output'),
      );
    }
    return null;
  }

  static List<RunResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunResp> mapFromJson(dynamic json) {
    final map = <String, RunResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunResp-objects as value to a dart map
  static Map<String, List<RunResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

