//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yOpsGenieConfig {
  /// Returns a new [O11yOpsGenieConfig] instance.
  O11yOpsGenieConfig({
    this.notifierConfig,
    this.actions,
    this.apiKey,
    this.apiKeyFile,
    this.apiUrl,
    this.description,
    this.details = const {},
    this.entity,
    this.httpConfig,
    this.message,
    this.note,
    this.priority,
    this.responders = const [],
    this.source_,
    this.tags,
    this.updateAlerts,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? actions;

  Object? apiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiKeyFile;

  Object? apiUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  Map<String, String> details;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entity;

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
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  List<O11yOpsGenieConfigResponder> responders;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? updateAlerts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yOpsGenieConfig &&
    other.notifierConfig == notifierConfig &&
    other.actions == actions &&
    other.apiKey == apiKey &&
    other.apiKeyFile == apiKeyFile &&
    other.apiUrl == apiUrl &&
    other.description == description &&
    _deepEquality.equals(other.details, details) &&
    other.entity == entity &&
    other.httpConfig == httpConfig &&
    other.message == message &&
    other.note == note &&
    other.priority == priority &&
    _deepEquality.equals(other.responders, responders) &&
    other.source_ == source_ &&
    other.tags == tags &&
    other.updateAlerts == updateAlerts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (actions == null ? 0 : actions!.hashCode) +
    (apiKey == null ? 0 : apiKey!.hashCode) +
    (apiKeyFile == null ? 0 : apiKeyFile!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (details.hashCode) +
    (entity == null ? 0 : entity!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (responders.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (updateAlerts == null ? 0 : updateAlerts!.hashCode);

  @override
  String toString() => 'O11yOpsGenieConfig[notifierConfig=$notifierConfig, actions=$actions, apiKey=$apiKey, apiKeyFile=$apiKeyFile, apiUrl=$apiUrl, description=$description, details=$details, entity=$entity, httpConfig=$httpConfig, message=$message, note=$note, priority=$priority, responders=$responders, source_=$source_, tags=$tags, updateAlerts=$updateAlerts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.actions != null) {
      json[r'actions'] = this.actions;
    } else {
      json[r'actions'] = null;
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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'details'] = this.details;
    if (this.entity != null) {
      json[r'entity'] = this.entity;
    } else {
      json[r'entity'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
      json[r'responders'] = this.responders;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    if (this.updateAlerts != null) {
      json[r'update_alerts'] = this.updateAlerts;
    } else {
      json[r'update_alerts'] = null;
    }
    return json;
  }

  /// Returns a new [O11yOpsGenieConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yOpsGenieConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yOpsGenieConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yOpsGenieConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yOpsGenieConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        actions: mapValueOfType<String>(json, r'actions'),
        apiKey: mapValueOfType<Object>(json, r'api_key'),
        apiKeyFile: mapValueOfType<String>(json, r'api_key_file'),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        description: mapValueOfType<String>(json, r'description'),
        details: mapCastOfType<String, String>(json, r'details') ?? const {},
        entity: mapValueOfType<String>(json, r'entity'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        message: mapValueOfType<String>(json, r'message'),
        note: mapValueOfType<String>(json, r'note'),
        priority: mapValueOfType<String>(json, r'priority'),
        responders: O11yOpsGenieConfigResponder.listFromJson(json[r'responders']),
        source_: mapValueOfType<String>(json, r'source'),
        tags: mapValueOfType<String>(json, r'tags'),
        updateAlerts: mapValueOfType<bool>(json, r'update_alerts'),
      );
    }
    return null;
  }

  static List<O11yOpsGenieConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yOpsGenieConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yOpsGenieConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yOpsGenieConfig> mapFromJson(dynamic json) {
    final map = <String, O11yOpsGenieConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yOpsGenieConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yOpsGenieConfig-objects as value to a dart map
  static Map<String, List<O11yOpsGenieConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yOpsGenieConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yOpsGenieConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

