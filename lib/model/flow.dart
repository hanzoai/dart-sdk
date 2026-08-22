//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Flow {
  /// Returns a new [Flow] instance.
  Flow({
    this.created,
    this.externalId,
    this.folderId,
    this.id,
    this.metadata,
    this.projectId,
    this.publishedVersionId,
    this.status,
    this.updated,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? metadata;

  /// projectId == org (server-derived)
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
  String? publishedVersionId;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is Flow &&
    other.created == created &&
    other.externalId == externalId &&
    other.folderId == folderId &&
    other.id == id &&
    other.metadata == metadata &&
    other.projectId == projectId &&
    other.publishedVersionId == publishedVersionId &&
    other.status == status &&
    other.updated == updated;

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
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'Flow[created=$created, externalId=$externalId, folderId=$folderId, id=$id, metadata=$metadata, projectId=$projectId, publishedVersionId=$publishedVersionId, status=$status, updated=$updated]';

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
    return json;
  }

  /// Returns a new [Flow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Flow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Flow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Flow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Flow(
        created: mapValueOfType<int>(json, r'created'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        folderId: mapValueOfType<String>(json, r'folderId'),
        id: mapValueOfType<String>(json, r'id'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        publishedVersionId: mapValueOfType<String>(json, r'publishedVersionId'),
        status: mapValueOfType<String>(json, r'status'),
        updated: mapValueOfType<int>(json, r'updated'),
      );
    }
    return null;
  }

  static List<Flow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Flow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Flow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Flow> mapFromJson(dynamic json) {
    final map = <String, Flow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Flow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Flow-objects as value to a dart map
  static Map<String, List<Flow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Flow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Flow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

