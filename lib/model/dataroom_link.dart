//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomLink {
  /// Returns a new [DataroomLink] instance.
  DataroomLink({
    this.allowDownload,
    this.allowList = const [],
    this.createdAt,
    this.dataroomId,
    this.denyList = const [],
    this.documentId,
    this.emailProtected,
    this.expiresAt,
    this.hasPassword,
    this.id,
    this.isArchived,
    this.linkType,
    this.name,
    this.updatedAt,
  });
  /// AllowDownload is whether a visitor may download, rather than only view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowDownload;

  /// AllowList narrows which addresses pass the email gate. An entry may be a full address, an \"@domain.com\" suffix, or a bare \"domain.com\". An EMPTY list admits everyone.
  List<String> allowList;

  /// CreatedAt is when the link was minted, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// DataroomId is the room the link opens, null for a single-document link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataroomId;

  /// DenyList rejects addresses, in the same three forms as the allow list, and is checked BEFORE it — so deny always wins.
  List<String> denyList;

  /// DocumentId is the document the link opens, null for a room link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentId;

  /// EmailProtected is whether a visitor must state an address to enter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailProtected;

  /// ExpiresAt is when the link closes, in unix milliseconds; null never expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// HasPassword reports THAT a password is set. The stored form is a bcrypt hash and no route returns it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasPassword;

  /// ID is the link id — the public token a visitor opens the room with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IsArchived is whether the link has been retired.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isArchived;

  /// LinkType is DATAROOM_LINK or DOCUMENT_LINK.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkType;

  /// Name is the link's label, null when none was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UpdatedAt is when the link last changed, in unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomLink &&
    other.allowDownload == allowDownload &&
    _deepEquality.equals(other.allowList, allowList) &&
    other.createdAt == createdAt &&
    other.dataroomId == dataroomId &&
    _deepEquality.equals(other.denyList, denyList) &&
    other.documentId == documentId &&
    other.emailProtected == emailProtected &&
    other.expiresAt == expiresAt &&
    other.hasPassword == hasPassword &&
    other.id == id &&
    other.isArchived == isArchived &&
    other.linkType == linkType &&
    other.name == name &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowDownload == null ? 0 : allowDownload!.hashCode) +
    (allowList.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dataroomId == null ? 0 : dataroomId!.hashCode) +
    (denyList.hashCode) +
    (documentId == null ? 0 : documentId!.hashCode) +
    (emailProtected == null ? 0 : emailProtected!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (hasPassword == null ? 0 : hasPassword!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isArchived == null ? 0 : isArchived!.hashCode) +
    (linkType == null ? 0 : linkType!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DataroomLink[allowDownload=$allowDownload, allowList=$allowList, createdAt=$createdAt, dataroomId=$dataroomId, denyList=$denyList, documentId=$documentId, emailProtected=$emailProtected, expiresAt=$expiresAt, hasPassword=$hasPassword, id=$id, isArchived=$isArchived, linkType=$linkType, name=$name, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allowDownload != null) {
      json[r'allowDownload'] = this.allowDownload;
    } else {
      json[r'allowDownload'] = null;
    }
      json[r'allowList'] = this.allowList;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.dataroomId != null) {
      json[r'dataroomId'] = this.dataroomId;
    } else {
      json[r'dataroomId'] = null;
    }
      json[r'denyList'] = this.denyList;
    if (this.documentId != null) {
      json[r'documentId'] = this.documentId;
    } else {
      json[r'documentId'] = null;
    }
    if (this.emailProtected != null) {
      json[r'emailProtected'] = this.emailProtected;
    } else {
      json[r'emailProtected'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.hasPassword != null) {
      json[r'hasPassword'] = this.hasPassword;
    } else {
      json[r'hasPassword'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isArchived != null) {
      json[r'isArchived'] = this.isArchived;
    } else {
      json[r'isArchived'] = null;
    }
    if (this.linkType != null) {
      json[r'linkType'] = this.linkType;
    } else {
      json[r'linkType'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomLink[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomLink[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomLink(
        allowDownload: mapValueOfType<bool>(json, r'allowDownload'),
        allowList: json[r'allowList'] is Iterable
            ? (json[r'allowList'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        dataroomId: mapValueOfType<String>(json, r'dataroomId'),
        denyList: json[r'denyList'] is Iterable
            ? (json[r'denyList'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        documentId: mapValueOfType<String>(json, r'documentId'),
        emailProtected: mapValueOfType<bool>(json, r'emailProtected'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        hasPassword: mapValueOfType<bool>(json, r'hasPassword'),
        id: mapValueOfType<String>(json, r'id'),
        isArchived: mapValueOfType<bool>(json, r'isArchived'),
        linkType: mapValueOfType<String>(json, r'linkType'),
        name: mapValueOfType<String>(json, r'name'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<DataroomLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomLink> mapFromJson(dynamic json) {
    final map = <String, DataroomLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomLink-objects as value to a dart map
  static Map<String, List<DataroomLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

