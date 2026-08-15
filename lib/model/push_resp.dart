//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PushResp {
  /// Returns a new [PushResp] instance.
  PushResp({
    this.branch,
    this.cloneUrl,
    this.commit,
    this.sshUrl,
  });

  /// Branch is the branch that was advanced, resolved (never empty).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// CloneURL is the repo's HTTPS remote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloneUrl;

  /// Commit is the new commit's full hash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  /// SSHURL is the repo's scp-style SSH remote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sshUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PushResp &&
    other.branch == branch &&
    other.cloneUrl == cloneUrl &&
    other.commit == commit &&
    other.sshUrl == sshUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (cloneUrl == null ? 0 : cloneUrl!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (sshUrl == null ? 0 : sshUrl!.hashCode);

  @override
  String toString() => 'PushResp[branch=$branch, cloneUrl=$cloneUrl, commit=$commit, sshUrl=$sshUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
    if (this.sshUrl != null) {
      json[r'sshUrl'] = this.sshUrl;
    } else {
      json[r'sshUrl'] = null;
    }
    return json;
  }

  /// Returns a new [PushResp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushResp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PushResp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PushResp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushResp(
        branch: mapValueOfType<String>(json, r'branch'),
        cloneUrl: mapValueOfType<String>(json, r'cloneUrl'),
        commit: mapValueOfType<String>(json, r'commit'),
        sshUrl: mapValueOfType<String>(json, r'sshUrl'),
      );
    }
    return null;
  }

  static List<PushResp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PushResp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushResp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushResp> mapFromJson(dynamic json) {
    final map = <String, PushResp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushResp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushResp-objects as value to a dart map
  static Map<String, List<PushResp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PushResp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushResp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

