//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsComplete {
  /// Returns a new [ProjectsComplete] instance.
  ProjectsComplete({
    this.bytes,
    this.commit,
    this.files,
    this.id,
    this.keys = const [],
    this.liveUrl,
    this.message,
    this.slug,
    this.status,
  });
  /// Bytes is their total size in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  /// Commit is the revision that was built, recorded on the deployment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  /// Files is how many objects CI published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? files;

  /// ID is the queued deployment to complete, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Keys is the manifest CI just uploaded, RELATIVE to the deployment prefix. It is what replaces `aws s3 sync --delete`: an upload grant authorizes writes only, so CI cannot remove a file, and cloud reconciles the prefix against this list instead (grant.go). Omit it and nothing is deleted — the prefix only grows, which is the old pre-grant behaviour and a safe default.
  List<String> keys;

  /// LiveURL is a HINT at the address the site should serve at. The public host is claimed by cloud first, so this can refine the URL a deployment reports but can never assert a subdomain another tenant holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveUrl;

  /// Message is what happened, in words — on an error completion, why it failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Slug is the project the deployment belongs to, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Status is how the build ended: `live` if it succeeded, `error` if it did not. Nothing else is accepted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsComplete &&
    other.bytes == bytes &&
    other.commit == commit &&
    other.files == files &&
    other.id == id &&
    _deepEquality.equals(other.keys, keys) &&
    other.liveUrl == liveUrl &&
    other.message == message &&
    other.slug == slug &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bytes == null ? 0 : bytes!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (files == null ? 0 : files!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (keys.hashCode) +
    (liveUrl == null ? 0 : liveUrl!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ProjectsComplete[bytes=$bytes, commit=$commit, files=$files, id=$id, keys=$keys, liveUrl=$liveUrl, message=$message, slug=$slug, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'keys'] = this.keys;
    if (this.liveUrl != null) {
      json[r'liveUrl'] = this.liveUrl;
    } else {
      json[r'liveUrl'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsComplete] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsComplete? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsComplete[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsComplete[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsComplete(
        bytes: mapValueOfType<int>(json, r'bytes'),
        commit: mapValueOfType<String>(json, r'commit'),
        files: mapValueOfType<int>(json, r'files'),
        id: mapValueOfType<String>(json, r'id'),
        keys: json[r'keys'] is Iterable
            ? (json[r'keys'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        liveUrl: mapValueOfType<String>(json, r'liveUrl'),
        message: mapValueOfType<String>(json, r'message'),
        slug: mapValueOfType<String>(json, r'slug'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ProjectsComplete> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsComplete>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsComplete.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsComplete> mapFromJson(dynamic json) {
    final map = <String, ProjectsComplete>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsComplete.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsComplete-objects as value to a dart map
  static Map<String, List<ProjectsComplete>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsComplete>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsComplete.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

