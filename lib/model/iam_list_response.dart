//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamListResponse {
  /// Returns a new [IamListResponse] instance.
  IamListResponse({
    this.resources = const [],
    this.itemsPerPage,
    this.schemas = const [],
    this.startIndex,
    this.totalResults,
  });

  List<Object> resources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? itemsPerPage;

  List<String> schemas;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamListResponse &&
    _deepEquality.equals(other.resources, resources) &&
    other.itemsPerPage == itemsPerPage &&
    _deepEquality.equals(other.schemas, schemas) &&
    other.startIndex == startIndex &&
    other.totalResults == totalResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resources.hashCode) +
    (itemsPerPage == null ? 0 : itemsPerPage!.hashCode) +
    (schemas.hashCode) +
    (startIndex == null ? 0 : startIndex!.hashCode) +
    (totalResults == null ? 0 : totalResults!.hashCode);

  @override
  String toString() => 'IamListResponse[resources=$resources, itemsPerPage=$itemsPerPage, schemas=$schemas, startIndex=$startIndex, totalResults=$totalResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'Resources'] = this.resources;
    if (this.itemsPerPage != null) {
      json[r'itemsPerPage'] = this.itemsPerPage;
    } else {
      json[r'itemsPerPage'] = null;
    }
      json[r'schemas'] = this.schemas;
    if (this.startIndex != null) {
      json[r'startIndex'] = this.startIndex;
    } else {
      json[r'startIndex'] = null;
    }
    if (this.totalResults != null) {
      json[r'totalResults'] = this.totalResults;
    } else {
      json[r'totalResults'] = null;
    }
    return json;
  }

  /// Returns a new [IamListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamListResponse(
        resources: json[r'Resources'] is Iterable
            ? (json[r'Resources'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        itemsPerPage: mapValueOfType<int>(json, r'itemsPerPage'),
        schemas: json[r'schemas'] is Iterable
            ? (json[r'schemas'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        startIndex: mapValueOfType<int>(json, r'startIndex'),
        totalResults: mapValueOfType<int>(json, r'totalResults'),
      );
    }
    return null;
  }

  static List<IamListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamListResponse> mapFromJson(dynamic json) {
    final map = <String, IamListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamListResponse-objects as value to a dart map
  static Map<String, List<IamListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

