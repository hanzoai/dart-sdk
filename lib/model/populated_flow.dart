//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PopulatedFlow {
  /// Returns a new [PopulatedFlow] instance.
  PopulatedFlow({
    this.created,
    this.externalId,
    this.folderId,
    this.id,
    this.metadata,
    this.projectId,
    this.publishedVersionId,
    this.status,
    this.updated,
    this.version,
  });

  /// Created and Updated are unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// ExternalID is the caller's own id for this flow, if it set one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// FolderID groups the flow in the builder's tree.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  /// ID is the flow's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? metadata;

  /// Org is the owning org, which this surface names projectId. Server-derived from the validated principal — never read from a request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// PublishedVersionID is the version a run executes when set; empty means the latest version runs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publishedVersionId;

  /// Status is ENABLED or DISABLED — whether the flow's trigger is armed.
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
  int? updated;

  /// Version is the flow's latest version — its display name and step tree.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FlowVersion? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PopulatedFlow &&
    other.created == created &&
    other.externalId == externalId &&
    other.folderId == folderId &&
    other.id == id &&
    other.metadata == metadata &&
    other.projectId == projectId &&
    other.publishedVersionId == publishedVersionId &&
    other.status == status &&
    other.updated == updated &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (publishedVersionId == null ? 0 : publishedVersionId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'PopulatedFlow[created=$created, externalId=$externalId, folderId=$folderId, id=$id, metadata=$metadata, projectId=$projectId, publishedVersionId=$publishedVersionId, status=$status, updated=$updated, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.publishedVersionId != null) {
      json[r'publishedVersionId'] = this.publishedVersionId;
    } else {
      json[r'publishedVersionId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [PopulatedFlow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PopulatedFlow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PopulatedFlow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PopulatedFlow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PopulatedFlow(
        created: mapValueOfType<int>(json, r'created'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        folderId: mapValueOfType<String>(json, r'folderId'),
        id: mapValueOfType<String>(json, r'id'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        publishedVersionId: mapValueOfType<String>(json, r'publishedVersionId'),
        status: mapValueOfType<String>(json, r'status'),
        updated: mapValueOfType<int>(json, r'updated'),
        version: FlowVersion.fromJson(json[r'version']),
      );
    }
    return null;
  }

  static List<PopulatedFlow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PopulatedFlow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PopulatedFlow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PopulatedFlow> mapFromJson(dynamic json) {
    final map = <String, PopulatedFlow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PopulatedFlow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PopulatedFlow-objects as value to a dart map
  static Map<String, List<PopulatedFlow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PopulatedFlow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PopulatedFlow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

