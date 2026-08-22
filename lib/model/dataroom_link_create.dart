//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomLinkCreate {
  /// Returns a new [DataroomLinkCreate] instance.
  DataroomLinkCreate({
    this.allowDownload,
    this.allowList = const [],
    this.dataroomId,
    this.denyList = const [],
    this.documentId,
    this.emailProtected,
    this.expiresAt,
    this.name,
    this.password,
  });
  Object? allowDownload;

  /// AllowList narrows which addresses pass the email gate. Optional; an entry may be a full address (\"ada@example.com\"), an \"@domain.com\" suffix, or a bare \"domain.com\". An omitted or EMPTY list admits everyone, so a link with no list enforces the email gate alone.
  List<Object> allowList;

  Object? dataroomId;

  /// DenyList rejects addresses, in the same three forms as the allow list. Optional. It is checked BEFORE the allow list, so deny always wins.
  List<Object> denyList;

  Object? documentId;

  Object? emailProtected;

  Object? expiresAt;

  Object? name;

  Object? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomLinkCreate &&
    other.allowDownload == allowDownload &&
    _deepEquality.equals(other.allowList, allowList) &&
    other.dataroomId == dataroomId &&
    _deepEquality.equals(other.denyList, denyList) &&
    other.documentId == documentId &&
    other.emailProtected == emailProtected &&
    other.expiresAt == expiresAt &&
    other.name == name &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowDownload == null ? 0 : allowDownload!.hashCode) +
    (allowList.hashCode) +
    (dataroomId == null ? 0 : dataroomId!.hashCode) +
    (denyList.hashCode) +
    (documentId == null ? 0 : documentId!.hashCode) +
    (emailProtected == null ? 0 : emailProtected!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'DataroomLinkCreate[allowDownload=$allowDownload, allowList=$allowList, dataroomId=$dataroomId, denyList=$denyList, documentId=$documentId, emailProtected=$emailProtected, expiresAt=$expiresAt, name=$name, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allowDownload != null) {
      json[r'allowDownload'] = this.allowDownload;
    } else {
      json[r'allowDownload'] = null;
    }
      json[r'allowList'] = this.allowList;
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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomLinkCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomLinkCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomLinkCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomLinkCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomLinkCreate(
        allowDownload: mapValueOfType<Object>(json, r'allowDownload'),
        allowList: json[r'allowList'] is Iterable
            ? (json[r'allowList'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        dataroomId: mapValueOfType<Object>(json, r'dataroomId'),
        denyList: json[r'denyList'] is Iterable
            ? (json[r'denyList'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        documentId: mapValueOfType<Object>(json, r'documentId'),
        emailProtected: mapValueOfType<Object>(json, r'emailProtected'),
        expiresAt: mapValueOfType<Object>(json, r'expiresAt'),
        name: mapValueOfType<Object>(json, r'name'),
        password: mapValueOfType<Object>(json, r'password'),
      );
    }
    return null;
  }

  static List<DataroomLinkCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomLinkCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomLinkCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomLinkCreate> mapFromJson(dynamic json) {
    final map = <String, DataroomLinkCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomLinkCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomLinkCreate-objects as value to a dart map
  static Map<String, List<DataroomLinkCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomLinkCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomLinkCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

