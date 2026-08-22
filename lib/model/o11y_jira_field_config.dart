//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yJiraFieldConfig {
  /// Returns a new [O11yJiraFieldConfig] instance.
  O11yJiraFieldConfig({
    this.enableUpdate,
    this.template,
  });
  /// EnableUpdate indicates whether this field should be omitted when updating an existing issue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableUpdate;

  /// Template is the template string used to render the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? template;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yJiraFieldConfig &&
    other.enableUpdate == enableUpdate &&
    other.template == template;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enableUpdate == null ? 0 : enableUpdate!.hashCode) +
    (template == null ? 0 : template!.hashCode);

  @override
  String toString() => 'O11yJiraFieldConfig[enableUpdate=$enableUpdate, template=$template]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enableUpdate != null) {
      json[r'enable_update'] = this.enableUpdate;
    } else {
      json[r'enable_update'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    return json;
  }

  /// Returns a new [O11yJiraFieldConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yJiraFieldConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yJiraFieldConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yJiraFieldConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yJiraFieldConfig(
        enableUpdate: mapValueOfType<bool>(json, r'enable_update'),
        template: mapValueOfType<String>(json, r'template'),
      );
    }
    return null;
  }

  static List<O11yJiraFieldConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yJiraFieldConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yJiraFieldConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yJiraFieldConfig> mapFromJson(dynamic json) {
    final map = <String, O11yJiraFieldConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yJiraFieldConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yJiraFieldConfig-objects as value to a dart map
  static Map<String, List<O11yJiraFieldConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yJiraFieldConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yJiraFieldConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

