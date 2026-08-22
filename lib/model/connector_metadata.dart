//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConnectorMetadata {
  /// Returns a new [ConnectorMetadata] instance.
  ConnectorMetadata({
    this.actions = const [],
    this.auth,
    this.categories = const [],
    this.description,
    this.displayName,
    this.logoUrl,
    this.name,
    this.triggers = const [],
    this.version,
  });
  List<ConnectorAction> actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectorAuth? auth;

  List<String> categories;

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
  String? logoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<ConnectorTrigger> triggers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorMetadata &&
    _deepEquality.equals(other.actions, actions) &&
    other.auth == auth &&
    _deepEquality.equals(other.categories, categories) &&
    other.description == description &&
    other.displayName == displayName &&
    other.logoUrl == logoUrl &&
    other.name == name &&
    _deepEquality.equals(other.triggers, triggers) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actions.hashCode) +
    (auth == null ? 0 : auth!.hashCode) +
    (categories.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (triggers.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'ConnectorMetadata[actions=$actions, auth=$auth, categories=$categories, description=$description, displayName=$displayName, logoUrl=$logoUrl, name=$name, triggers=$triggers, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actions'] = this.actions;
    if (this.auth != null) {
      json[r'auth'] = this.auth;
    } else {
      json[r'auth'] = null;
    }
      json[r'categories'] = this.categories;
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
    if (this.logoUrl != null) {
      json[r'logoUrl'] = this.logoUrl;
    } else {
      json[r'logoUrl'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'triggers'] = this.triggers;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorMetadata(
        actions: ConnectorAction.listFromJson(json[r'actions']),
        auth: ConnectorAuth.fromJson(json[r'auth']),
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        logoUrl: mapValueOfType<String>(json, r'logoUrl'),
        name: mapValueOfType<String>(json, r'name'),
        triggers: ConnectorTrigger.listFromJson(json[r'triggers']),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<ConnectorMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorMetadata> mapFromJson(dynamic json) {
    final map = <String, ConnectorMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorMetadata-objects as value to a dart map
  static Map<String, List<ConnectorMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

