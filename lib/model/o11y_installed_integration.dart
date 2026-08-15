//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yInstalledIntegration {
  /// Returns a new [O11yInstalledIntegration] instance.
  O11yInstalledIntegration({
    this.config = const {},
    this.id,
    this.installedAt,
    this.orgId,
    this.type,
  });

  Map<String, Object> config;

  Object? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? installedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yInstalledIntegration &&
    _deepEquality.equals(other.config, config) &&
    other.id == id &&
    other.installedAt == installedAt &&
    other.orgId == orgId &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (installedAt == null ? 0 : installedAt!.hashCode) +
    (orgId == null ? 0 : orgId!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yInstalledIntegration[config=$config, id=$id, installedAt=$installedAt, orgId=$orgId, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'config'] = this.config;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.installedAt != null) {
      json[r'installed_at'] = this.installedAt!.toUtc().toIso8601String();
    } else {
      json[r'installed_at'] = null;
    }
    if (this.orgId != null) {
      json[r'org_id'] = this.orgId;
    } else {
      json[r'org_id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yInstalledIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yInstalledIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yInstalledIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yInstalledIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yInstalledIntegration(
        config: mapCastOfType<String, Object>(json, r'config') ?? const {},
        id: mapValueOfType<Object>(json, r'id'),
        installedAt: mapDateTime(json, r'installed_at', r''),
        orgId: mapValueOfType<String>(json, r'org_id'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yInstalledIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yInstalledIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yInstalledIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yInstalledIntegration> mapFromJson(dynamic json) {
    final map = <String, O11yInstalledIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yInstalledIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yInstalledIntegration-objects as value to a dart map
  static Map<String, List<O11yInstalledIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yInstalledIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yInstalledIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

