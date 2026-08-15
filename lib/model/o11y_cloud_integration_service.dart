//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yCloudIntegrationService {
  /// Returns a new [O11yCloudIntegrationService] instance.
  O11yCloudIntegrationService({
    this.cloudIntegrationId,
    this.config,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  Object? cloudIntegrationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yServiceConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  Object? id;

  Object? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yCloudIntegrationService &&
    other.cloudIntegrationId == cloudIntegrationId &&
    other.config == config &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.type == type &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cloudIntegrationId == null ? 0 : cloudIntegrationId!.hashCode) +
    (config == null ? 0 : config!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yCloudIntegrationService[cloudIntegrationId=$cloudIntegrationId, config=$config, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cloudIntegrationId != null) {
      json[r'cloudIntegrationId'] = this.cloudIntegrationId;
    } else {
      json[r'cloudIntegrationId'] = null;
    }
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [O11yCloudIntegrationService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yCloudIntegrationService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yCloudIntegrationService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yCloudIntegrationService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yCloudIntegrationService(
        cloudIntegrationId: mapValueOfType<Object>(json, r'cloudIntegrationId'),
        config: O11yServiceConfig.fromJson(json[r'config']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        id: mapValueOfType<Object>(json, r'id'),
        type: mapValueOfType<Object>(json, r'type'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<O11yCloudIntegrationService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yCloudIntegrationService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yCloudIntegrationService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yCloudIntegrationService> mapFromJson(dynamic json) {
    final map = <String, O11yCloudIntegrationService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yCloudIntegrationService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yCloudIntegrationService-objects as value to a dart map
  static Map<String, List<O11yCloudIntegrationService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yCloudIntegrationService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yCloudIntegrationService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

