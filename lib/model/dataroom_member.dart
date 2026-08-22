//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomMember {
  /// Returns a new [DataroomMember] instance.
  DataroomMember({
    this.contentType,
    this.createdAt,
    this.dataroomDocumentId,
    this.fileKey,
    this.fileSize,
    this.id,
    this.name,
    this.numPages,
    this.orderIndex,
    this.type,
    this.updatedAt,
  });
  /// ContentType is the mime type recorded at upload, null when none was sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentType;

  /// CreatedAt is when the document was uploaded, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DataroomDocumentId is the membership id — this document's place in THIS room, distinct from the document id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataroomDocumentId;

  /// FileKey is the opaque object-storage key the bytes are stored under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileKey;

  /// FileSize is the stored byte count, null when it was not recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileSize;

  /// ID is the document id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the document's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// NumPages is the page count, null when it was not supplied at upload.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numPages;

  /// OrderIndex is the document's place in the viewer's list, null when it was added without one. Unordered documents sort last.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderIndex;

  /// Type is the document's kind, null when it was not recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// UpdatedAt is when the document row last changed, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomMember &&
    other.contentType == contentType &&
    other.createdAt == createdAt &&
    other.dataroomDocumentId == dataroomDocumentId &&
    other.fileKey == fileKey &&
    other.fileSize == fileSize &&
    other.id == id &&
    other.name == name &&
    other.numPages == numPages &&
    other.orderIndex == orderIndex &&
    other.type == type &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contentType == null ? 0 : contentType!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dataroomDocumentId == null ? 0 : dataroomDocumentId!.hashCode) +
    (fileKey == null ? 0 : fileKey!.hashCode) +
    (fileSize == null ? 0 : fileSize!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (numPages == null ? 0 : numPages!.hashCode) +
    (orderIndex == null ? 0 : orderIndex!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DataroomMember[contentType=$contentType, createdAt=$createdAt, dataroomDocumentId=$dataroomDocumentId, fileKey=$fileKey, fileSize=$fileSize, id=$id, name=$name, numPages=$numPages, orderIndex=$orderIndex, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.dataroomDocumentId != null) {
      json[r'dataroomDocumentId'] = this.dataroomDocumentId;
    } else {
      json[r'dataroomDocumentId'] = null;
    }
    if (this.fileKey != null) {
      json[r'fileKey'] = this.fileKey;
    } else {
      json[r'fileKey'] = null;
    }
    if (this.fileSize != null) {
      json[r'fileSize'] = this.fileSize;
    } else {
      json[r'fileSize'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.numPages != null) {
      json[r'numPages'] = this.numPages;
    } else {
      json[r'numPages'] = null;
    }
    if (this.orderIndex != null) {
      json[r'orderIndex'] = this.orderIndex;
    } else {
      json[r'orderIndex'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomMember[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomMember[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomMember(
        contentType: mapValueOfType<String>(json, r'contentType'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        dataroomDocumentId: mapValueOfType<String>(json, r'dataroomDocumentId'),
        fileKey: mapValueOfType<String>(json, r'fileKey'),
        fileSize: mapValueOfType<int>(json, r'fileSize'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        numPages: mapValueOfType<int>(json, r'numPages'),
        orderIndex: mapValueOfType<int>(json, r'orderIndex'),
        type: mapValueOfType<String>(json, r'type'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<DataroomMember> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomMember> mapFromJson(dynamic json) {
    final map = <String, DataroomMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomMember-objects as value to a dart map
  static Map<String, List<DataroomMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomMember>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomMember.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

