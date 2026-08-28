//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class App {
  /// Returns a new [App] instance.
  App({
    this.basicConfigOptions = const [],
    this.createdTime,
    this.description,
    this.details,
    this.displayName,
    this.manifest,
    this.name,
    this.namespace,
    this.owner,
    this.parameters,
    this.status,
    this.template,
    this.updatedTime,
    this.url,
  });
  List<ApplicationConfigOption> basicConfigOptions;

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
  ApplicationView? details;

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
  String? namespace;

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
  String? parameters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? template;

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
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is App &&
    _deepEquality.equals(other.basicConfigOptions, basicConfigOptions) &&
    other.createdTime == createdTime &&
    other.description == description &&
    other.details == details &&
    other.displayName == displayName &&
    other.manifest == manifest &&
    other.name == name &&
    other.namespace == namespace &&
    other.owner == owner &&
    other.parameters == parameters &&
    other.status == status &&
    other.template == template &&
    other.updatedTime == updatedTime &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (basicConfigOptions.hashCode) +
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (manifest == null ? 0 : manifest!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (parameters == null ? 0 : parameters!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (template == null ? 0 : template!.hashCode) +
    (updatedTime == null ? 0 : updatedTime!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'App[basicConfigOptions=$basicConfigOptions, createdTime=$createdTime, description=$description, details=$details, displayName=$displayName, manifest=$manifest, name=$name, namespace=$namespace, owner=$owner, parameters=$parameters, status=$status, template=$template, updatedTime=$updatedTime, url=$url]';

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
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
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
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.parameters != null) {
      json[r'parameters'] = this.parameters;
    } else {
      json[r'parameters'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    if (this.updatedTime != null) {
      json[r'updatedTime'] = this.updatedTime;
    } else {
      json[r'updatedTime'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [App] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static App? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "App[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "App[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return App(
        basicConfigOptions: ApplicationConfigOption.listFromJson(json[r'basicConfigOptions']),
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        description: mapValueOfType<String>(json, r'description'),
        details: ApplicationView.fromJson(json[r'details']),
        displayName: mapValueOfType<String>(json, r'displayName'),
        manifest: mapValueOfType<String>(json, r'manifest'),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        owner: mapValueOfType<String>(json, r'owner'),
        parameters: mapValueOfType<String>(json, r'parameters'),
        status: mapValueOfType<String>(json, r'status'),
        template: mapValueOfType<String>(json, r'template'),
        updatedTime: mapValueOfType<String>(json, r'updatedTime'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<App> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <App>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = App.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, App> mapFromJson(dynamic json) {
    final map = <String, App>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = App.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of App-objects as value to a dart map
  static Map<String, List<App>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<App>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = App.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

