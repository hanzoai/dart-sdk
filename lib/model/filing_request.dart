//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FilingRequest {
  /// Returns a new [FilingRequest] instance.
  FilingRequest({
    this.documentIds = const [],
    this.jurisdiction,
  });

  /// DocumentIDs are the documents to file. At least one is required, and every one must belong to the caller's org — a filing can never reach across orgs.
  List<String> documentIds;

  /// Jurisdiction is the state or agency the filing is for, e.g. \"DE\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jurisdiction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilingRequest &&
    _deepEquality.equals(other.documentIds, documentIds) &&
    other.jurisdiction == jurisdiction;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentIds.hashCode) +
    (jurisdiction == null ? 0 : jurisdiction!.hashCode);

  @override
  String toString() => 'FilingRequest[documentIds=$documentIds, jurisdiction=$jurisdiction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'documentIds'] = this.documentIds;
    if (this.jurisdiction != null) {
      json[r'jurisdiction'] = this.jurisdiction;
    } else {
      json[r'jurisdiction'] = null;
    }
    return json;
  }

  /// Returns a new [FilingRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilingRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilingRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilingRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilingRequest(
        documentIds: json[r'documentIds'] is Iterable
            ? (json[r'documentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jurisdiction: mapValueOfType<String>(json, r'jurisdiction'),
      );
    }
    return null;
  }

  static List<FilingRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilingRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilingRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilingRequest> mapFromJson(dynamic json) {
    final map = <String, FilingRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilingRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilingRequest-objects as value to a dart map
  static Map<String, List<FilingRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilingRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilingRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

