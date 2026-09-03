//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CodingStarted {
  /// Returns a new [CodingStarted] instance.
  CodingStarted({
    this.branch,
    this.repo,
    this.routed,
    this.sessionId,
    this.targetId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? routed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodingStarted &&
    other.branch == branch &&
    other.repo == repo &&
    other.routed == routed &&
    other.sessionId == sessionId &&
    other.targetId == targetId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (routed == null ? 0 : routed!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode);

  @override
  String toString() => 'CodingStarted[branch=$branch, repo=$repo, routed=$routed, sessionId=$sessionId, targetId=$targetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.routed != null) {
      json[r'routed'] = this.routed;
    } else {
      json[r'routed'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    return json;
  }

  /// Returns a new [CodingStarted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodingStarted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodingStarted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodingStarted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodingStarted(
        branch: mapValueOfType<String>(json, r'branch'),
        repo: mapValueOfType<String>(json, r'repo'),
        routed: mapValueOfType<bool>(json, r'routed'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        targetId: mapValueOfType<String>(json, r'targetId'),
      );
    }
    return null;
  }

  static List<CodingStarted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodingStarted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodingStarted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodingStarted> mapFromJson(dynamic json) {
    final map = <String, CodingStarted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodingStarted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodingStarted-objects as value to a dart map
  static Map<String, List<CodingStarted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodingStarted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodingStarted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

