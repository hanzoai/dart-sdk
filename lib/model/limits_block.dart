//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LimitsBlock {
  /// Returns a new [LimitsBlock] instance.
  LimitsBlock({
    this.apiRateLimit,
    this.maxAlerts,
    this.mcpRateLimit,
    this.modelApi,
  });

  /// APIRateLimit is requests per minute allowed against the REST /v1/world surface. -1 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? apiRateLimit;

  /// MaxAlerts is how many saved OSINT alert rules the plan allows. -1 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAlerts;

  /// MCPRateLimit is requests per minute allowed against the MCP surface. -1 means unlimited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mcpRateLimit;

  /// ModelAPI is whether the plan reaches the World model endpoint and the SSE stream. The free floor is false, and that is what a catalog outage resolves to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? modelApi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LimitsBlock &&
    other.apiRateLimit == apiRateLimit &&
    other.maxAlerts == maxAlerts &&
    other.mcpRateLimit == mcpRateLimit &&
    other.modelApi == modelApi;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiRateLimit == null ? 0 : apiRateLimit!.hashCode) +
    (maxAlerts == null ? 0 : maxAlerts!.hashCode) +
    (mcpRateLimit == null ? 0 : mcpRateLimit!.hashCode) +
    (modelApi == null ? 0 : modelApi!.hashCode);

  @override
  String toString() => 'LimitsBlock[apiRateLimit=$apiRateLimit, maxAlerts=$maxAlerts, mcpRateLimit=$mcpRateLimit, modelApi=$modelApi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiRateLimit != null) {
      json[r'apiRateLimit'] = this.apiRateLimit;
    } else {
      json[r'apiRateLimit'] = null;
    }
    if (this.maxAlerts != null) {
      json[r'maxAlerts'] = this.maxAlerts;
    } else {
      json[r'maxAlerts'] = null;
    }
    if (this.mcpRateLimit != null) {
      json[r'mcpRateLimit'] = this.mcpRateLimit;
    } else {
      json[r'mcpRateLimit'] = null;
    }
    if (this.modelApi != null) {
      json[r'modelApi'] = this.modelApi;
    } else {
      json[r'modelApi'] = null;
    }
    return json;
  }

  /// Returns a new [LimitsBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LimitsBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LimitsBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LimitsBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LimitsBlock(
        apiRateLimit: mapValueOfType<int>(json, r'apiRateLimit'),
        maxAlerts: mapValueOfType<int>(json, r'maxAlerts'),
        mcpRateLimit: mapValueOfType<int>(json, r'mcpRateLimit'),
        modelApi: mapValueOfType<bool>(json, r'modelApi'),
      );
    }
    return null;
  }

  static List<LimitsBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LimitsBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LimitsBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LimitsBlock> mapFromJson(dynamic json) {
    final map = <String, LimitsBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LimitsBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LimitsBlock-objects as value to a dart map
  static Map<String, List<LimitsBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LimitsBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LimitsBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

