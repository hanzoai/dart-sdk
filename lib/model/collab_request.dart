//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CollabRequest {
  /// Returns a new [CollabRequest] instance.
  CollabRequest({
    this.documentId,
    this.method,
    this.payload,
  });

  /// DocumentID addresses the document field, as \"<workspaceUuid>|<objectClass>|<objectId>|<objectAttr>\" — the collaborator-client encodeDocumentId shape, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? documentId;

  /// Method is the verb: createContent, updateContent or getContent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Payload is the verb's argument.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CollabPayload? payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollabRequest &&
    other.documentId == documentId &&
    other.method == method &&
    other.payload == payload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentId == null ? 0 : documentId!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (payload == null ? 0 : payload!.hashCode);

  @override
  String toString() => 'CollabRequest[documentId=$documentId, method=$method, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.documentId != null) {
      json[r'documentId'] = this.documentId;
    } else {
      json[r'documentId'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    return json;
  }

  /// Returns a new [CollabRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollabRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CollabRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CollabRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollabRequest(
        documentId: mapValueOfType<String>(json, r'documentId'),
        method: mapValueOfType<String>(json, r'method'),
        payload: CollabPayload.fromJson(json[r'payload']),
      );
    }
    return null;
  }

  static List<CollabRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CollabRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollabRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollabRequest> mapFromJson(dynamic json) {
    final map = <String, CollabRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollabRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollabRequest-objects as value to a dart map
  static Map<String, List<CollabRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CollabRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollabRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

