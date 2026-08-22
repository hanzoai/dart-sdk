//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PatchFlowIn {
  /// Returns a new [PatchFlowIn] instance.
  PatchFlowIn({
    this.externalId,
    this.folderId,
    this.id,
    this.metadata,
    this.publishedVersionId,
  });
  /// ExternalID sets the caller's own id for this flow.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// FolderID moves the flow in the builder's tree.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  /// ID is the flow to update, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? metadata;

  /// PublishedVersionID pins the version runs execute. It must name a version OF THIS FLOW; empty clears the pin, so runs take the latest version again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publishedVersionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchFlowIn &&
    other.externalId == externalId &&
    other.folderId == folderId &&
    other.id == id &&
    other.metadata == metadata &&
    other.publishedVersionId == publishedVersionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (externalId == null ? 0 : externalId!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (publishedVersionId == null ? 0 : publishedVersionId!.hashCode);

  @override
  String toString() => 'PatchFlowIn[externalId=$externalId, folderId=$folderId, id=$id, metadata=$metadata, publishedVersionId=$publishedVersionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.publishedVersionId != null) {
      json[r'publishedVersionId'] = this.publishedVersionId;
    } else {
      json[r'publishedVersionId'] = null;
    }
    return json;
  }

  /// Returns a new [PatchFlowIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchFlowIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchFlowIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchFlowIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchFlowIn(
        externalId: mapValueOfType<String>(json, r'externalId'),
        folderId: mapValueOfType<String>(json, r'folderId'),
        id: mapValueOfType<String>(json, r'id'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        publishedVersionId: mapValueOfType<String>(json, r'publishedVersionId'),
      );
    }
    return null;
  }

  static List<PatchFlowIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchFlowIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchFlowIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchFlowIn> mapFromJson(dynamic json) {
    final map = <String, PatchFlowIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchFlowIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchFlowIn-objects as value to a dart map
  static Map<String, List<PatchFlowIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchFlowIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchFlowIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

