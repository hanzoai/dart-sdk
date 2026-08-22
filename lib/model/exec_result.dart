//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ExecResult {
  /// Returns a new [ExecResult] instance.
  ExecResult({
    this.exitCode,
    this.stderr,
    this.stdout,
  });
  /// ExitCode is the command's own exit status. A non-zero one is a SUCCESSFUL call carrying a failed command — the HTTP status stays 200, because \"the command failed\" and \"the call failed\" are different facts and a caller has to be able to tell them apart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exitCode;

  /// Stderr is everything it wrote to standard error. It is populated on a successful run too — plenty of tools report progress there — so it is not a signal that anything went wrong; ExitCode is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stderr;

  /// Stdout is everything the command wrote to standard output, as text.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stdout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecResult &&
    other.exitCode == exitCode &&
    other.stderr == stderr &&
    other.stdout == stdout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exitCode == null ? 0 : exitCode!.hashCode) +
    (stderr == null ? 0 : stderr!.hashCode) +
    (stdout == null ? 0 : stdout!.hashCode);

  @override
  String toString() => 'ExecResult[exitCode=$exitCode, stderr=$stderr, stdout=$stdout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exitCode != null) {
      json[r'exitCode'] = this.exitCode;
    } else {
      json[r'exitCode'] = null;
    }
    if (this.stderr != null) {
      json[r'stderr'] = this.stderr;
    } else {
      json[r'stderr'] = null;
    }
    if (this.stdout != null) {
      json[r'stdout'] = this.stdout;
    } else {
      json[r'stdout'] = null;
    }
    return json;
  }

  /// Returns a new [ExecResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExecResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExecResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecResult(
        exitCode: mapValueOfType<int>(json, r'exitCode'),
        stderr: mapValueOfType<String>(json, r'stderr'),
        stdout: mapValueOfType<String>(json, r'stdout'),
      );
    }
    return null;
  }

  static List<ExecResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecResult> mapFromJson(dynamic json) {
    final map = <String, ExecResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecResult-objects as value to a dart map
  static Map<String, List<ExecResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

