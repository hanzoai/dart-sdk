//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yGlobalConfig {
  /// Returns a new [O11yO11yGlobalConfig] instance.
  O11yO11yGlobalConfig({
    this.aiAssistantUrl,
    this.externalUrl,
    this.identN,
    this.ingestionUrl,
    this.mcpUrl,
  });
  /// AIAssistantURL is the AI assistant endpoint, when one is exposed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aiAssistantUrl;

  /// ExternalURL is the deployment's public URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalUrl;

  /// IdentN says which identity providers are enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yIdentN? identN;

  /// IngestionURL is where telemetry is sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ingestionUrl;

  /// MCPURL is the MCP endpoint, when one is exposed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mcpUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yGlobalConfig &&
    other.aiAssistantUrl == aiAssistantUrl &&
    other.externalUrl == externalUrl &&
    other.identN == identN &&
    other.ingestionUrl == ingestionUrl &&
    other.mcpUrl == mcpUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aiAssistantUrl == null ? 0 : aiAssistantUrl!.hashCode) +
    (externalUrl == null ? 0 : externalUrl!.hashCode) +
    (identN == null ? 0 : identN!.hashCode) +
    (ingestionUrl == null ? 0 : ingestionUrl!.hashCode) +
    (mcpUrl == null ? 0 : mcpUrl!.hashCode);

  @override
  String toString() => 'O11yO11yGlobalConfig[aiAssistantUrl=$aiAssistantUrl, externalUrl=$externalUrl, identN=$identN, ingestionUrl=$ingestionUrl, mcpUrl=$mcpUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aiAssistantUrl != null) {
      json[r'ai_assistant_url'] = this.aiAssistantUrl;
    } else {
      json[r'ai_assistant_url'] = null;
    }
    if (this.externalUrl != null) {
      json[r'external_url'] = this.externalUrl;
    } else {
      json[r'external_url'] = null;
    }
    if (this.identN != null) {
      json[r'identN'] = this.identN;
    } else {
      json[r'identN'] = null;
    }
    if (this.ingestionUrl != null) {
      json[r'ingestion_url'] = this.ingestionUrl;
    } else {
      json[r'ingestion_url'] = null;
    }
    if (this.mcpUrl != null) {
      json[r'mcp_url'] = this.mcpUrl;
    } else {
      json[r'mcp_url'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yGlobalConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yGlobalConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yGlobalConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yGlobalConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yGlobalConfig(
        aiAssistantUrl: mapValueOfType<String>(json, r'ai_assistant_url'),
        externalUrl: mapValueOfType<String>(json, r'external_url'),
        identN: O11yO11yIdentN.fromJson(json[r'identN']),
        ingestionUrl: mapValueOfType<String>(json, r'ingestion_url'),
        mcpUrl: mapValueOfType<String>(json, r'mcp_url'),
      );
    }
    return null;
  }

  static List<O11yO11yGlobalConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yGlobalConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yGlobalConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yGlobalConfig> mapFromJson(dynamic json) {
    final map = <String, O11yO11yGlobalConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yGlobalConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yGlobalConfig-objects as value to a dart map
  static Map<String, List<O11yO11yGlobalConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yGlobalConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yGlobalConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

