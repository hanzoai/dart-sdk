//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexCount {
  /// Returns a new [IndexCount] instance.
  IndexCount({
    this.isIndexing,
    this.numberOfDocuments,
  });
  /// IsIndexing is always false: writes are applied before their response, so there is never a background pass a caller could be waiting on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isIndexing;

  /// NumberOfDocuments is how many documents this org holds in that index.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfDocuments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexCount &&
    other.isIndexing == isIndexing &&
    other.numberOfDocuments == numberOfDocuments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isIndexing == null ? 0 : isIndexing!.hashCode) +
    (numberOfDocuments == null ? 0 : numberOfDocuments!.hashCode);

  @override
  String toString() => 'IndexCount[isIndexing=$isIndexing, numberOfDocuments=$numberOfDocuments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isIndexing != null) {
      json[r'isIndexing'] = this.isIndexing;
    } else {
      json[r'isIndexing'] = null;
    }
    if (this.numberOfDocuments != null) {
      json[r'numberOfDocuments'] = this.numberOfDocuments;
    } else {
      json[r'numberOfDocuments'] = null;
    }
    return json;
  }

  /// Returns a new [IndexCount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexCount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexCount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexCount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexCount(
        isIndexing: mapValueOfType<bool>(json, r'isIndexing'),
        numberOfDocuments: mapValueOfType<int>(json, r'numberOfDocuments'),
      );
    }
    return null;
  }

  static List<IndexCount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexCount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexCount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexCount> mapFromJson(dynamic json) {
    final map = <String, IndexCount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexCount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexCount-objects as value to a dart map
  static Map<String, List<IndexCount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexCount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexCount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

