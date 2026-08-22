//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodeResult {
  /// Returns a new [CodeResult] instance.
  CodeResult({
    this.files = const [],
    this.sessionId,
    this.stderr,
    this.stdout,
  });
  /// Files are what this run CREATED OR CHANGED, decided by mtime against a marker taken before the program started — so it is the run's output, not a listing of the directory. Fetch each from GET /v1/exec/download/{session}/{id}.
  List<CodeFile> files;

  /// SessionID is the sandbox this run used — the one that was passed in, or the fresh one that was leased. Pass it to the next run to keep the filesystem.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// Stderr is what the program wrote to standard error, INCLUDING a compiler's diagnostics and the trace of a program that exited non-zero. Its presence is not a failed call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stderr;

  /// Stdout is what the program wrote to standard output.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stdout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeResult &&
    _deepEquality.equals(other.files, files) &&
    other.sessionId == sessionId &&
    other.stderr == stderr &&
    other.stdout == stdout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (stderr == null ? 0 : stderr!.hashCode) +
    (stdout == null ? 0 : stdout!.hashCode);

  @override
  String toString() => 'CodeResult[files=$files, sessionId=$sessionId, stderr=$stderr, stdout=$stdout]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'files'] = this.files;
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
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

  /// Returns a new [CodeResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeResult(
        files: CodeFile.listFromJson(json[r'files']),
        sessionId: mapValueOfType<String>(json, r'session_id'),
        stderr: mapValueOfType<String>(json, r'stderr'),
        stdout: mapValueOfType<String>(json, r'stdout'),
      );
    }
    return null;
  }

  static List<CodeResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeResult> mapFromJson(dynamic json) {
    final map = <String, CodeResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeResult-objects as value to a dart map
  static Map<String, List<CodeResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

