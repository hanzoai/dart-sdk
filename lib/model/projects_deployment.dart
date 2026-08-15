//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsDeployment {
  /// Returns a new [ProjectsDeployment] instance.
  ProjectsDeployment({
    this.bucket,
    this.bytes,
    this.commit,
    this.createdAt,
    this.files,
    this.id,
    this.liveUrl,
    this.message,
    this.prefix,
    this.projectId,
    this.source_,
    this.status,
    this.updatedAt,
    this.upload,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? files;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// Upload is the prefix-scoped, short-lived S3 write grant handed to CI with a queued git deployment, so it needs no bucket credential (grant.go). Present ONLY on the 202 that creates the deployment — it is never stored and never replayed on a later read, so a grant cannot outlive the build it was minted for by being fetched again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectsUploadGrant? upload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsDeployment &&
    other.bucket == bucket &&
    other.bytes == bytes &&
    other.commit == commit &&
    other.createdAt == createdAt &&
    other.files == files &&
    other.id == id &&
    other.liveUrl == liveUrl &&
    other.message == message &&
    other.prefix == prefix &&
    other.projectId == projectId &&
    other.source_ == source_ &&
    other.status == status &&
    other.updatedAt == updatedAt &&
    other.upload == upload &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucket == null ? 0 : bucket!.hashCode) +
    (bytes == null ? 0 : bytes!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (files == null ? 0 : files!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (liveUrl == null ? 0 : liveUrl!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (upload == null ? 0 : upload!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ProjectsDeployment[bucket=$bucket, bytes=$bytes, commit=$commit, createdAt=$createdAt, files=$files, id=$id, liveUrl=$liveUrl, message=$message, prefix=$prefix, projectId=$projectId, source_=$source_, status=$status, updatedAt=$updatedAt, upload=$upload, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.upload != null) {
      json[r'upload'] = this.upload;
    } else {
      json[r'upload'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsDeployment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsDeployment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsDeployment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsDeployment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsDeployment(
        bucket: mapValueOfType<String>(json, r'bucket'),
        bytes: mapValueOfType<int>(json, r'bytes'),
        commit: mapValueOfType<String>(json, r'commit'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        files: mapValueOfType<int>(json, r'files'),
        id: mapValueOfType<String>(json, r'id'),
        liveUrl: mapValueOfType<String>(json, r'liveUrl'),
        message: mapValueOfType<String>(json, r'message'),
        prefix: mapValueOfType<String>(json, r'prefix'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        source_: mapValueOfType<String>(json, r'source'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        upload: ProjectsUploadGrant.fromJson(json[r'upload']),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<ProjectsDeployment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsDeployment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsDeployment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsDeployment> mapFromJson(dynamic json) {
    final map = <String, ProjectsDeployment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsDeployment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsDeployment-objects as value to a dart map
  static Map<String, List<ProjectsDeployment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsDeployment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsDeployment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

