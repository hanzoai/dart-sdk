//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RoutedRunOut {
  /// Returns a new [RoutedRunOut] instance.
  RoutedRunOut({
    this.base_,
    this.branch,
    this.cloneUrl,
    this.project,
    this.prompt,
    this.repo,
    this.sessionId,
    this.timeoutSeconds,
  });
  /// Base is the branch to start FROM. Empty means the repository's default — resolve it on the machine, since the machine is the one holding the clone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base_;

  /// Branch is the ref the run must push its work to, and the ONLY one it is permitted to write: the forge's ref policy refuses anything else from this run's credential. It is decided at dispatch and exists before the work does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// CloneURL is how to fetch the repository. It carries NO credential — the machine authenticates with the git identity it already holds — which is why this whole shape is safe to hand to a claimed runner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloneUrl;

  /// Project is the product slug the run is filed under, so the machine can tag what it produces. Empty when the dispatch named none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Prompt is the task, in full, as the person wrote it. There is no second field for context.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prompt;

  /// Repo is the repository to work in and CloneURL is how to fetch it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// SessionID is the live session opened at dispatch; the machine streams its turns into it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// TimeoutSeconds bounds the run on the machine; 0 means the machine's own default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeoutSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutedRunOut &&
    other.base_ == base_ &&
    other.branch == branch &&
    other.cloneUrl == cloneUrl &&
    other.project == project &&
    other.prompt == prompt &&
    other.repo == repo &&
    other.sessionId == sessionId &&
    other.timeoutSeconds == timeoutSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base_ == null ? 0 : base_!.hashCode) +
    (branch == null ? 0 : branch!.hashCode) +
    (cloneUrl == null ? 0 : cloneUrl!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (timeoutSeconds == null ? 0 : timeoutSeconds!.hashCode);

  @override
  String toString() => 'RoutedRunOut[base_=$base_, branch=$branch, cloneUrl=$cloneUrl, project=$project, prompt=$prompt, repo=$repo, sessionId=$sessionId, timeoutSeconds=$timeoutSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.base_ != null) {
      json[r'base'] = this.base_;
    } else {
      json[r'base'] = null;
    }
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.cloneUrl != null) {
      json[r'cloneUrl'] = this.cloneUrl;
    } else {
      json[r'cloneUrl'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.prompt != null) {
      json[r'prompt'] = this.prompt;
    } else {
      json[r'prompt'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.timeoutSeconds != null) {
      json[r'timeoutSeconds'] = this.timeoutSeconds;
    } else {
      json[r'timeoutSeconds'] = null;
    }
    return json;
  }

  /// Returns a new [RoutedRunOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutedRunOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoutedRunOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoutedRunOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoutedRunOut(
        base_: mapValueOfType<String>(json, r'base'),
        branch: mapValueOfType<String>(json, r'branch'),
        cloneUrl: mapValueOfType<String>(json, r'cloneUrl'),
        project: mapValueOfType<String>(json, r'project'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        repo: mapValueOfType<String>(json, r'repo'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        timeoutSeconds: mapValueOfType<int>(json, r'timeoutSeconds'),
      );
    }
    return null;
  }

  static List<RoutedRunOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutedRunOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutedRunOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutedRunOut> mapFromJson(dynamic json) {
    final map = <String, RoutedRunOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutedRunOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutedRunOut-objects as value to a dart map
  static Map<String, List<RoutedRunOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutedRunOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoutedRunOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

