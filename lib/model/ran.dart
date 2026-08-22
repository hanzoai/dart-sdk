//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Ran {
  /// Returns a new [Ran] instance.
  Ran({
    this.exitCode,
    this.stderr,
    this.stdout,
  });
  /// ExitCode is the PROGRAM's own status — 0 succeeded, anything else is what it returned, and a Command runs under `sh -c` so its shell's conventions apply. A command that never reached an exit does not arrive here at all: a timeout or a stop cancels the channel, and that is an error on the call rather than a code of ours invented to fill this field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exitCode;

  /// Stderr is standard error, kept apart from Stdout so a caller reading a program's OUTPUT is not reading its diagnostics as data. Same 1 MiB cap, same redaction. A program that failed usually says why here and nowhere else.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stderr;

  /// Stdout is what the program wrote to standard output, collected whole rather than streamed — to watch it arrive instead, name a RunIn.Session and read that session's feed. Capped at 1 MiB, past which it ends in \"[truncated at 1MiB]\". Every string named in RunIn.Blind is replaced by \"[redacted]\" before it gets here, and before it reaches the session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stdout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Ran &&
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
  String toString() => 'Ran[exitCode=$exitCode, stderr=$stderr, stdout=$stdout]';

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

  /// Returns a new [Ran] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Ran? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Ran[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Ran[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Ran(
        exitCode: mapValueOfType<int>(json, r'exitCode'),
        stderr: mapValueOfType<String>(json, r'stderr'),
        stdout: mapValueOfType<String>(json, r'stdout'),
      );
    }
    return null;
  }

  static List<Ran> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Ran>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Ran.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Ran> mapFromJson(dynamic json) {
    final map = <String, Ran>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Ran.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Ran-objects as value to a dart map
  static Map<String, List<Ran>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Ran>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Ran.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

