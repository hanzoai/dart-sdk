//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FlowUpdate {
  /// Returns a new [FlowUpdate] instance.
  FlowUpdate({
    this.data,
    this.description,
    this.locked,
    this.name,
    this.workflow,
  });

  Object? data;

  /// Description replaces the description when present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Locked freezes or unfreezes the workflow against edits when present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? locked;

  /// Name renames the workflow when present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Workflow is the workflow's UUID, taken from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workflow;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowUpdate &&
    other.data == data &&
    other.description == description &&
    other.locked == locked &&
    other.name == name &&
    other.workflow == workflow;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (workflow == null ? 0 : workflow!.hashCode);

  @override
  String toString() => 'FlowUpdate[data=$data, description=$description, locked=$locked, name=$name, workflow=$workflow]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.workflow != null) {
      json[r'workflow'] = this.workflow;
    } else {
      json[r'workflow'] = null;
    }
    return json;
  }

  /// Returns a new [FlowUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlowUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlowUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlowUpdate(
        data: mapValueOfType<Object>(json, r'data'),
        description: mapValueOfType<String>(json, r'description'),
        locked: mapValueOfType<bool>(json, r'locked'),
        name: mapValueOfType<String>(json, r'name'),
        workflow: mapValueOfType<String>(json, r'workflow'),
      );
    }
    return null;
  }

  static List<FlowUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlowUpdate> mapFromJson(dynamic json) {
    final map = <String, FlowUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlowUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlowUpdate-objects as value to a dart map
  static Map<String, List<FlowUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlowUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlowUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

