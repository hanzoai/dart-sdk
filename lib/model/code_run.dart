//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodeRun {
  /// Returns a new [CodeRun] instance.
  CodeRun({
    this.args = const [],
    required this.code,
    this.files = const [],
    required this.lang,
    this.runtimeSessionHint,
    this.sessionId,
    this.userId,
  });

  /// Args become the PROGRAM's argv, never the compiler's. For the compiled languages the toolchain builds first and these are passed to the binary it produced.
  List<String> args;

  /// Code is the WHOLE program, not a fragment: it is written to a single file and that file is what runs, so a compiled language needs its entry point and an interpreted one runs top to bottom.
  String code;

  /// Files are inputs the host already put in some session. Each names the session its bytes live in, which is usually — and ideally — the session this run wants.
  List<CodeFile> files;

  /// Lang selects the toolchain, and with it the filename the code is written to and the line that runs it: py, js, ts, bash, r, php, go, rs, c, cpp, java, d, f90. Anything else is refused rather than guessed at — a run in the wrong language fails somewhere deep in a compiler, which reads as an outage.
  String lang;

  /// RuntimeSessionHint is the stateful-session hint. It is carried so a client that sends it is not silently misread, and it selects nothing here: every session in this implementation is already a warm sandbox, so there is no second kind of runtime for a hint to choose between.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtimeSessionHint;

  /// SessionID continues an EXISTING sandbox, which is what makes runs stateful: the same filesystem, so one run's output file is the next run's input. Empty leases a fresh sandbox and the id it got comes back on the result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// UserID attributes the run inside the caller's org. It is a label, never a tenant: the org is resolved from the validated principal and a value here cannot widen what the run may reach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeRun &&
    _deepEquality.equals(other.args, args) &&
    other.code == code &&
    _deepEquality.equals(other.files, files) &&
    other.lang == lang &&
    other.runtimeSessionHint == runtimeSessionHint &&
    other.sessionId == sessionId &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (args.hashCode) +
    (code.hashCode) +
    (files.hashCode) +
    (lang.hashCode) +
    (runtimeSessionHint == null ? 0 : runtimeSessionHint!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'CodeRun[args=$args, code=$code, files=$files, lang=$lang, runtimeSessionHint=$runtimeSessionHint, sessionId=$sessionId, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'args'] = this.args;
      json[r'code'] = this.code;
      json[r'files'] = this.files;
      json[r'lang'] = this.lang;
    if (this.runtimeSessionHint != null) {
      json[r'runtime_session_hint'] = this.runtimeSessionHint;
    } else {
      json[r'runtime_session_hint'] = null;
    }
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    return json;
  }

  /// Returns a new [CodeRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeRun? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeRun[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeRun[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeRun(
        args: json[r'args'] is Iterable
            ? (json[r'args'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        code: mapValueOfType<String>(json, r'code')!,
        files: CodeFile.listFromJson(json[r'files']),
        lang: mapValueOfType<String>(json, r'lang')!,
        runtimeSessionHint: mapValueOfType<String>(json, r'runtime_session_hint'),
        sessionId: mapValueOfType<String>(json, r'session_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
      );
    }
    return null;
  }

  static List<CodeRun> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeRun>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeRun.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeRun> mapFromJson(dynamic json) {
    final map = <String, CodeRun>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeRun.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeRun-objects as value to a dart map
  static Map<String, List<CodeRun>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeRun>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeRun.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'lang',
  };
}

