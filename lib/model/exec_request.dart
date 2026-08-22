//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ExecRequest {
  /// Returns a new [ExecRequest] instance.
  ExecRequest({
    this.argv = const [],
    this.command,
    this.dir,
    this.id,
    this.stdin,
    this.timeoutSec,
  });
  /// Argv is the command as an argument vector, which is the honest form: it cannot be word-split by accident. Send this OR Command, not both.
  List<String> argv;

  /// Command is a shell line, for a caller that holds one. It is a convenience over Argv and is the only input that ever reaches a shell.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? command;

  /// Dir is the working directory to run in. Empty runs in the class's own workdir — /mnt/data for exec, /work for dev.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dir;

  /// ID is the sandbox to run in, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Stdin is fed to the command on its standard input.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stdin;

  /// TimeoutSec bounds the run in seconds. Zero takes the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeoutSec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecRequest &&
    _deepEquality.equals(other.argv, argv) &&
    other.command == command &&
    other.dir == dir &&
    other.id == id &&
    other.stdin == stdin &&
    other.timeoutSec == timeoutSec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (argv.hashCode) +
    (command == null ? 0 : command!.hashCode) +
    (dir == null ? 0 : dir!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (stdin == null ? 0 : stdin!.hashCode) +
    (timeoutSec == null ? 0 : timeoutSec!.hashCode);

  @override
  String toString() => 'ExecRequest[argv=$argv, command=$command, dir=$dir, id=$id, stdin=$stdin, timeoutSec=$timeoutSec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'argv'] = this.argv;
    if (this.command != null) {
      json[r'command'] = this.command;
    } else {
      json[r'command'] = null;
    }
    if (this.dir != null) {
      json[r'dir'] = this.dir;
    } else {
      json[r'dir'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.stdin != null) {
      json[r'stdin'] = this.stdin;
    } else {
      json[r'stdin'] = null;
    }
    if (this.timeoutSec != null) {
      json[r'timeoutSec'] = this.timeoutSec;
    } else {
      json[r'timeoutSec'] = null;
    }
    return json;
  }

  /// Returns a new [ExecRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExecRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExecRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecRequest(
        argv: json[r'argv'] is Iterable
            ? (json[r'argv'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        command: mapValueOfType<String>(json, r'command'),
        dir: mapValueOfType<String>(json, r'dir'),
        id: mapValueOfType<String>(json, r'id'),
        stdin: mapValueOfType<String>(json, r'stdin'),
        timeoutSec: mapValueOfType<int>(json, r'timeoutSec'),
      );
    }
    return null;
  }

  static List<ExecRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecRequest> mapFromJson(dynamic json) {
    final map = <String, ExecRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecRequest-objects as value to a dart map
  static Map<String, List<ExecRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

