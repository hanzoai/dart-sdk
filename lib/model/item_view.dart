//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ItemView {
  /// Returns a new [ItemView] instance.
  ItemView({
    this.createdAt,
    this.datasetName,
    this.expectedOutput,
    this.id,
    this.input,
    this.metadata = const {},
    this.status,
    this.updatedAt,
  });

  /// CreatedAt is when the example was first written.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Dataset is the set this example belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? datasetName;

  /// Expected is the answer a correct model produces, which the judge grades against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? expectedOutput;

  /// ID is the example's handle, unique within the caller's org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Input is what the model under test is given, as it was written.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? input;

  /// Metadata is the free-form object stored with the example.
  Map<String, Object> metadata;

  /// Status is ACTIVE or ARCHIVED. Only ACTIVE examples are fed to a run, which is how one is retired without being deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// UpdatedAt is when it last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ItemView &&
    other.createdAt == createdAt &&
    other.datasetName == datasetName &&
    other.expectedOutput == expectedOutput &&
    other.id == id &&
    other.input == input &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.status == status &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (datasetName == null ? 0 : datasetName!.hashCode) +
    (expectedOutput == null ? 0 : expectedOutput!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (input == null ? 0 : input!.hashCode) +
    (metadata.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ItemView[createdAt=$createdAt, datasetName=$datasetName, expectedOutput=$expectedOutput, id=$id, input=$input, metadata=$metadata, status=$status, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.datasetName != null) {
      json[r'datasetName'] = this.datasetName;
    } else {
      json[r'datasetName'] = null;
    }
    if (this.expectedOutput != null) {
      json[r'expectedOutput'] = this.expectedOutput;
    } else {
      json[r'expectedOutput'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [ItemView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ItemView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ItemView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ItemView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ItemView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        datasetName: mapValueOfType<String>(json, r'datasetName'),
        expectedOutput: mapValueOfType<Object>(json, r'expectedOutput'),
        id: mapValueOfType<String>(json, r'id'),
        input: mapValueOfType<Object>(json, r'input'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        status: mapValueOfType<String>(json, r'status'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<ItemView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ItemView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ItemView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ItemView> mapFromJson(dynamic json) {
    final map = <String, ItemView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ItemView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ItemView-objects as value to a dart map
  static Map<String, List<ItemView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ItemView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ItemView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

