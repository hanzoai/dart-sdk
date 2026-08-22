//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeploymentView {
  /// Returns a new [DeploymentView] instance.
  DeploymentView({
    this.applicationId,
    this.buildId,
    this.commit,
    this.createdAt,
    this.id,
    this.image,
    this.message,
    this.org,
    this.source_,
    this.status,
    this.updatedAt,
    this.version,
  });
  /// ApplicationID is the app this deployed — the app's `id`, not its slug.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applicationId;

  /// BuildID is the build record behind a git deploy, whose logs and status live at /v1/platform/builds. Empty for an image deploy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildId;

  /// Commit is the git ref this built — the commit a deploy or a push named, else the app's branch. Empty for an image deploy, which builds nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  /// CreatedAt is when the attempt was recorded, unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the deployment's id (`dep_…`), minted when the attempt is recorded. The app's currentDeploymentId points at one of these.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Image is the full `repo:tag` this deployment put in the CR. For a git deploy it is the ref the in-cluster build pushes to, known before the build runs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Message is why this attempt is not live: the failure, or the note that a newer deployment went live before this build finished. Empty while it is fine.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Org is the tenant the deployment belongs to, from the validated identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Source is which lane produced it: `git` (built from the repo) or `image` (an already-built ref deployed as-is, including promote and rollback).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Status is where the attempt got to: `building` while its image is being built, `deploying` once its CR reached the cluster — which is the terminal success state, the app's own status is what turns `live` — `error` with the reason in Message, or `superseded` when a newer version went live first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is its last transition, unix seconds — so for a terminal deployment it is when it reached that state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// Version counts this app's deployments, from 1 and monotonically. It is what ORDERS them: a deploy only goes live if no higher version already is, so a build that finishes late is superseded instead of overwriting a newer one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeploymentView &&
    other.applicationId == applicationId &&
    other.buildId == buildId &&
    other.commit == commit &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.image == image &&
    other.message == message &&
    other.org == org &&
    other.source_ == source_ &&
    other.status == status &&
    other.updatedAt == updatedAt &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (buildId == null ? 0 : buildId!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'DeploymentView[applicationId=$applicationId, buildId=$buildId, commit=$commit, createdAt=$createdAt, id=$id, image=$image, message=$message, org=$org, source_=$source_, status=$status, updatedAt=$updatedAt, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.applicationId != null) {
      json[r'applicationId'] = this.applicationId;
    } else {
      json[r'applicationId'] = null;
    }
    if (this.buildId != null) {
      json[r'buildId'] = this.buildId;
    } else {
      json[r'buildId'] = null;
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
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
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [DeploymentView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeploymentView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeploymentView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeploymentView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeploymentView(
        applicationId: mapValueOfType<String>(json, r'applicationId'),
        buildId: mapValueOfType<String>(json, r'buildId'),
        commit: mapValueOfType<String>(json, r'commit'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        image: mapValueOfType<String>(json, r'image'),
        message: mapValueOfType<String>(json, r'message'),
        org: mapValueOfType<String>(json, r'org'),
        source_: mapValueOfType<String>(json, r'source'),
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<DeploymentView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeploymentView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeploymentView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeploymentView> mapFromJson(dynamic json) {
    final map = <String, DeploymentView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeploymentView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeploymentView-objects as value to a dart map
  static Map<String, List<DeploymentView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeploymentView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeploymentView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

