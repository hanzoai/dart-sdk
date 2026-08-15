//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yUninstallIntegrationRequest {
  /// Returns a new [O11yUninstallIntegrationRequest] instance.
  O11yUninstallIntegrationRequest({
    this.integrationId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? integrationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yUninstallIntegrationRequest &&
    other.integrationId == integrationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (integrationId == null ? 0 : integrationId!.hashCode);

  @override
  String toString() => 'O11yUninstallIntegrationRequest[integrationId=$integrationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.integrationId != null) {
      json[r'integration_id'] = this.integrationId;
    } else {
      json[r'integration_id'] = null;
    }
    return json;
  }

  /// Returns a new [O11yUninstallIntegrationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yUninstallIntegrationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yUninstallIntegrationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yUninstallIntegrationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yUninstallIntegrationRequest(
        integrationId: mapValueOfType<String>(json, r'integration_id'),
      );
    }
    return null;
  }

  static List<O11yUninstallIntegrationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yUninstallIntegrationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yUninstallIntegrationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yUninstallIntegrationRequest> mapFromJson(dynamic json) {
    final map = <String, O11yUninstallIntegrationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yUninstallIntegrationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yUninstallIntegrationRequest-objects as value to a dart map
  static Map<String, List<O11yUninstallIntegrationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yUninstallIntegrationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yUninstallIntegrationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

