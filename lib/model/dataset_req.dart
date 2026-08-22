//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DatasetReq {
  /// Returns a new [DatasetReq] instance.
  DatasetReq({
    this.description,
    this.metadata = const {},
    required this.name,
  });
  /// Description is free text about what this set measures; over 64 KiB is refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Metadata is a free-form object stored with the set and echoed back verbatim.
  Map<String, Object> metadata;

  /// Name is the dataset's org-unique handle and the segment that will address it, so it must match ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$.
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatasetReq &&
    other.description == description &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (metadata.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'DatasetReq[description=$description, metadata=$metadata, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'metadata'] = this.metadata;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [DatasetReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatasetReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatasetReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatasetReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatasetReq(
        description: mapValueOfType<String>(json, r'description'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<DatasetReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatasetReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatasetReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatasetReq> mapFromJson(dynamic json) {
    final map = <String, DatasetReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatasetReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatasetReq-objects as value to a dart map
  static Map<String, List<DatasetReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatasetReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatasetReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

