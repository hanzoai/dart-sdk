//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yVictorOpsConfig {
  /// Returns a new [O11yVictorOpsConfig] instance.
  O11yVictorOpsConfig({
    this.notifierConfig,
    this.apiKey,
    this.apiKeyFile,
    this.apiUrl,
    this.customFields = const {},
    this.entityDisplayName,
    this.httpConfig,
    this.messageType,
    this.monitoringTool,
    this.routingKey,
    this.stateMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  Object? apiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiKeyFile;

  Object? apiUrl;

  Map<String, String> customFields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityDisplayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yHTTPClientConfig? httpConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? monitoringTool;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routingKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stateMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yVictorOpsConfig &&
    other.notifierConfig == notifierConfig &&
    other.apiKey == apiKey &&
    other.apiKeyFile == apiKeyFile &&
    other.apiUrl == apiUrl &&
    _deepEquality.equals(other.customFields, customFields) &&
    other.entityDisplayName == entityDisplayName &&
    other.httpConfig == httpConfig &&
    other.messageType == messageType &&
    other.monitoringTool == monitoringTool &&
    other.routingKey == routingKey &&
    other.stateMessage == stateMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (apiKey == null ? 0 : apiKey!.hashCode) +
    (apiKeyFile == null ? 0 : apiKeyFile!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (customFields.hashCode) +
    (entityDisplayName == null ? 0 : entityDisplayName!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (messageType == null ? 0 : messageType!.hashCode) +
    (monitoringTool == null ? 0 : monitoringTool!.hashCode) +
    (routingKey == null ? 0 : routingKey!.hashCode) +
    (stateMessage == null ? 0 : stateMessage!.hashCode);

  @override
  String toString() => 'O11yVictorOpsConfig[notifierConfig=$notifierConfig, apiKey=$apiKey, apiKeyFile=$apiKeyFile, apiUrl=$apiUrl, customFields=$customFields, entityDisplayName=$entityDisplayName, httpConfig=$httpConfig, messageType=$messageType, monitoringTool=$monitoringTool, routingKey=$routingKey, stateMessage=$stateMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.apiKey != null) {
      json[r'api_key'] = this.apiKey;
    } else {
      json[r'api_key'] = null;
    }
    if (this.apiKeyFile != null) {
      json[r'api_key_file'] = this.apiKeyFile;
    } else {
      json[r'api_key_file'] = null;
    }
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
      json[r'custom_fields'] = this.customFields;
    if (this.entityDisplayName != null) {
      json[r'entity_display_name'] = this.entityDisplayName;
    } else {
      json[r'entity_display_name'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
    if (this.messageType != null) {
      json[r'message_type'] = this.messageType;
    } else {
      json[r'message_type'] = null;
    }
    if (this.monitoringTool != null) {
      json[r'monitoring_tool'] = this.monitoringTool;
    } else {
      json[r'monitoring_tool'] = null;
    }
    if (this.routingKey != null) {
      json[r'routing_key'] = this.routingKey;
    } else {
      json[r'routing_key'] = null;
    }
    if (this.stateMessage != null) {
      json[r'state_message'] = this.stateMessage;
    } else {
      json[r'state_message'] = null;
    }
    return json;
  }

  /// Returns a new [O11yVictorOpsConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yVictorOpsConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yVictorOpsConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yVictorOpsConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yVictorOpsConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        apiKey: mapValueOfType<Object>(json, r'api_key'),
        apiKeyFile: mapValueOfType<String>(json, r'api_key_file'),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        customFields: mapCastOfType<String, String>(json, r'custom_fields') ?? const {},
        entityDisplayName: mapValueOfType<String>(json, r'entity_display_name'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        messageType: mapValueOfType<String>(json, r'message_type'),
        monitoringTool: mapValueOfType<String>(json, r'monitoring_tool'),
        routingKey: mapValueOfType<String>(json, r'routing_key'),
        stateMessage: mapValueOfType<String>(json, r'state_message'),
      );
    }
    return null;
  }

  static List<O11yVictorOpsConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yVictorOpsConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yVictorOpsConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yVictorOpsConfig> mapFromJson(dynamic json) {
    final map = <String, O11yVictorOpsConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yVictorOpsConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yVictorOpsConfig-objects as value to a dart map
  static Map<String, List<O11yVictorOpsConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yVictorOpsConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yVictorOpsConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

