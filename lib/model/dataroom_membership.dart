//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomMembership {
  /// Returns a new [DataroomMembership] instance.
  DataroomMembership({
    this.dataroomDocumentId,
    this.dataroomId,
    this.documentId,
  });
  /// DataroomDocumentId is the new membership id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataroomDocumentId;

  /// DataroomId is the room the document was added to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataroomId;

  /// DocumentId is the document that was added.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomMembership &&
    other.dataroomDocumentId == dataroomDocumentId &&
    other.dataroomId == dataroomId &&
    other.documentId == documentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataroomDocumentId == null ? 0 : dataroomDocumentId!.hashCode) +
    (dataroomId == null ? 0 : dataroomId!.hashCode) +
    (documentId == null ? 0 : documentId!.hashCode);

  @override
  String toString() => 'DataroomMembership[dataroomDocumentId=$dataroomDocumentId, dataroomId=$dataroomId, documentId=$documentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataroomDocumentId != null) {
      json[r'dataroomDocumentId'] = this.dataroomDocumentId;
    } else {
      json[r'dataroomDocumentId'] = null;
    }
    if (this.dataroomId != null) {
      json[r'dataroomId'] = this.dataroomId;
    } else {
      json[r'dataroomId'] = null;
    }
    if (this.documentId != null) {
      json[r'documentId'] = this.documentId;
    } else {
      json[r'documentId'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomMembership] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomMembership? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomMembership[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomMembership[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomMembership(
        dataroomDocumentId: mapValueOfType<String>(json, r'dataroomDocumentId'),
        dataroomId: mapValueOfType<String>(json, r'dataroomId'),
        documentId: mapValueOfType<String>(json, r'documentId'),
      );
    }
    return null;
  }

  static List<DataroomMembership> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomMembership>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomMembership.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomMembership> mapFromJson(dynamic json) {
    final map = <String, DataroomMembership>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomMembership.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomMembership-objects as value to a dart map
  static Map<String, List<DataroomMembership>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomMembership>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomMembership.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

