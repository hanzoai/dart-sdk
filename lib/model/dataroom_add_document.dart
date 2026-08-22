//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DataroomAddDocument {
  /// Returns a new [DataroomAddDocument] instance.
  DataroomAddDocument({
    this.documentId,
    this.id,
    this.orderIndex,
  });
  Object? documentId;

  /// ID is the room to add to. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? orderIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataroomAddDocument &&
    other.documentId == documentId &&
    other.id == id &&
    other.orderIndex == orderIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentId == null ? 0 : documentId!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (orderIndex == null ? 0 : orderIndex!.hashCode);

  @override
  String toString() => 'DataroomAddDocument[documentId=$documentId, id=$id, orderIndex=$orderIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.documentId != null) {
      json[r'documentId'] = this.documentId;
    } else {
      json[r'documentId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.orderIndex != null) {
      json[r'orderIndex'] = this.orderIndex;
    } else {
      json[r'orderIndex'] = null;
    }
    return json;
  }

  /// Returns a new [DataroomAddDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataroomAddDocument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataroomAddDocument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataroomAddDocument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataroomAddDocument(
        documentId: mapValueOfType<Object>(json, r'documentId'),
        id: mapValueOfType<String>(json, r'id'),
        orderIndex: mapValueOfType<Object>(json, r'orderIndex'),
      );
    }
    return null;
  }

  static List<DataroomAddDocument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataroomAddDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataroomAddDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataroomAddDocument> mapFromJson(dynamic json) {
    final map = <String, DataroomAddDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataroomAddDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataroomAddDocument-objects as value to a dart map
  static Map<String, List<DataroomAddDocument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataroomAddDocument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataroomAddDocument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

