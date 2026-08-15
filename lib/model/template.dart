//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Template {
  /// Returns a new [Template] instance.
  Template({
    this.basicConfigOptions = const [],
    this.createdTime,
    this.description,
    this.displayName,
    this.enableBasicConfig,
    this.icon,
    this.manifest,
    this.name,
    this.owner,
    this.readme,
    this.updatedTime,
    this.version,
  });

  List<TemplateConfigOption> basicConfigOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableBasicConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manifest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? readme;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Template &&
    _deepEquality.equals(other.basicConfigOptions, basicConfigOptions) &&
    other.createdTime == createdTime &&
    other.description == description &&
    other.displayName == displayName &&
    other.enableBasicConfig == enableBasicConfig &&
    other.icon == icon &&
    other.manifest == manifest &&
    other.name == name &&
    other.owner == owner &&
    other.readme == readme &&
    other.updatedTime == updatedTime &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (basicConfigOptions.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (enableBasicConfig == null ? 0 : enableBasicConfig!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (manifest == null ? 0 : manifest!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (readme == null ? 0 : readme!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'Template[basicConfigOptions=$basicConfigOptions, createdTime=$createdTime, description=$description, displayName=$displayName, enableBasicConfig=$enableBasicConfig, icon=$icon, manifest=$manifest, name=$name, owner=$owner, readme=$readme, updatedTime=$updatedTime, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'basicConfigOptions'] = this.basicConfigOptions;
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.enableBasicConfig != null) {
      json[r'enableBasicConfig'] = this.enableBasicConfig;
    } else {
      json[r'enableBasicConfig'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.manifest != null) {
      json[r'manifest'] = this.manifest;
    } else {
      json[r'manifest'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.readme != null) {
      json[r'readme'] = this.readme;
    } else {
      json[r'readme'] = null;
    }
    if (this.updatedTime != null) {
      json[r'updatedTime'] = this.updatedTime;
    } else {
      json[r'updatedTime'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [Template] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Template? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Template[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Template[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Template(
        basicConfigOptions: TemplateConfigOption.listFromJson(json[r'basicConfigOptions']),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        enableBasicConfig: mapValueOfType<bool>(json, r'enableBasicConfig'),
        icon: mapValueOfType<String>(json, r'icon'),
        manifest: mapValueOfType<String>(json, r'manifest'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        readme: mapValueOfType<String>(json, r'readme'),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<Template> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Template>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Template.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Template> mapFromJson(dynamic json) {
    final map = <String, Template>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Template.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Template-objects as value to a dart map
  static Map<String, List<Template>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Template>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Template.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

