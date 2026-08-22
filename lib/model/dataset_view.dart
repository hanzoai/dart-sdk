//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DatasetView {
  /// Returns a new [DatasetView] instance.
  DatasetView({
    this.createdAt,
    this.description,
    this.items,
    this.metadata = const {},
    this.name,
    this.updatedAt,
  });
  /// CreatedAt is when the name was first written, kept across later edits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Description is free text the org wrote about what this set measures.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Items is how many examples the set holds. It is filled only by the single read — a listing does not count, so it is absent there rather than zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? items;

  /// Metadata is the free-form object stored with the set, echoed back verbatim.
  Map<String, Object> metadata;

  /// Name is the dataset's org-unique handle and the segment that addresses it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// UpdatedAt is when the description or metadata last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatasetView &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.items == items &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (metadata.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DatasetView[createdAt=$createdAt, description=$description, items=$items, metadata=$metadata, name=$name, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
      json[r'metadata'] = this.metadata;
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

  /// Returns a new [DatasetView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatasetView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatasetView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatasetView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatasetView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        description: mapValueOfType<String>(json, r'description'),
        items: mapValueOfType<int>(json, r'items'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<DatasetView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatasetView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatasetView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatasetView> mapFromJson(dynamic json) {
    final map = <String, DatasetView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatasetView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatasetView-objects as value to a dart map
  static Map<String, List<DatasetView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatasetView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatasetView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

