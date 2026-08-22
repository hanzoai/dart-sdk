//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yInstallIntegrationRequest {
  /// Returns a new [O11yInstallIntegrationRequest] instance.
  O11yInstallIntegrationRequest({
    this.config = const {},
    this.integrationId,
  });
  Map<String, Object> config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? integrationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yInstallIntegrationRequest &&
    _deepEquality.equals(other.config, config) &&
    other.integrationId == integrationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode);

  @override
  String toString() => 'O11yInstallIntegrationRequest[config=$config, integrationId=$integrationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'config'] = this.config;
    if (this.integrationId != null) {
      json[r'integration_id'] = this.integrationId;
    } else {
      json[r'integration_id'] = null;
    }
    return json;
  }

  /// Returns a new [O11yInstallIntegrationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yInstallIntegrationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yInstallIntegrationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yInstallIntegrationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yInstallIntegrationRequest(
        config: mapCastOfType<String, Object>(json, r'config') ?? const {},
        integrationId: mapValueOfType<String>(json, r'integration_id'),
      );
    }
    return null;
  }

  static List<O11yInstallIntegrationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yInstallIntegrationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yInstallIntegrationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yInstallIntegrationRequest> mapFromJson(dynamic json) {
    final map = <String, O11yInstallIntegrationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yInstallIntegrationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yInstallIntegrationRequest-objects as value to a dart map
  static Map<String, List<O11yInstallIntegrationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yInstallIntegrationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yInstallIntegrationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

