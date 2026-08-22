//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yJiraConfig {
  /// Returns a new [O11yJiraConfig] instance.
  O11yJiraConfig({
    this.notifierConfig,
    this.apiType,
    this.apiUrl,
    this.customFields = const {},
    this.description,
    this.httpConfig,
    this.issueType,
    this.labels = const [],
    this.priority,
    this.project,
    this.reopenDuration,
    this.reopenTransition,
    this.resolveTransition,
    this.summary,
    this.wontFixResolution,
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
  String? apiType;

  Object? apiUrl;

  Map<String, Object> customFields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yJiraFieldConfig? description;

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
  String? issueType;

  List<String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  Object? reopenDuration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reopenTransition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolveTransition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yJiraFieldConfig? summary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wontFixResolution;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yJiraConfig &&
    other.notifierConfig == notifierConfig &&
    other.apiType == apiType &&
    other.apiUrl == apiUrl &&
    _deepEquality.equals(other.customFields, customFields) &&
    other.description == description &&
    other.httpConfig == httpConfig &&
    other.issueType == issueType &&
    _deepEquality.equals(other.labels, labels) &&
    other.priority == priority &&
    other.project == project &&
    other.reopenDuration == reopenDuration &&
    other.reopenTransition == reopenTransition &&
    other.resolveTransition == resolveTransition &&
    other.summary == summary &&
    other.wontFixResolution == wontFixResolution;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (apiType == null ? 0 : apiType!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (customFields.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (issueType == null ? 0 : issueType!.hashCode) +
    (labels.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (reopenDuration == null ? 0 : reopenDuration!.hashCode) +
    (reopenTransition == null ? 0 : reopenTransition!.hashCode) +
    (resolveTransition == null ? 0 : resolveTransition!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (wontFixResolution == null ? 0 : wontFixResolution!.hashCode);

  @override
  String toString() => 'O11yJiraConfig[notifierConfig=$notifierConfig, apiType=$apiType, apiUrl=$apiUrl, customFields=$customFields, description=$description, httpConfig=$httpConfig, issueType=$issueType, labels=$labels, priority=$priority, project=$project, reopenDuration=$reopenDuration, reopenTransition=$reopenTransition, resolveTransition=$resolveTransition, summary=$summary, wontFixResolution=$wontFixResolution]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.apiType != null) {
      json[r'api_type'] = this.apiType;
    } else {
      json[r'api_type'] = null;
    }
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
      json[r'custom_fields'] = this.customFields;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
    if (this.issueType != null) {
      json[r'issue_type'] = this.issueType;
    } else {
      json[r'issue_type'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.reopenDuration != null) {
      json[r'reopen_duration'] = this.reopenDuration;
    } else {
      json[r'reopen_duration'] = null;
    }
    if (this.reopenTransition != null) {
      json[r'reopen_transition'] = this.reopenTransition;
    } else {
      json[r'reopen_transition'] = null;
    }
    if (this.resolveTransition != null) {
      json[r'resolve_transition'] = this.resolveTransition;
    } else {
      json[r'resolve_transition'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.wontFixResolution != null) {
      json[r'wont_fix_resolution'] = this.wontFixResolution;
    } else {
      json[r'wont_fix_resolution'] = null;
    }
    return json;
  }

  /// Returns a new [O11yJiraConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yJiraConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yJiraConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yJiraConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yJiraConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        apiType: mapValueOfType<String>(json, r'api_type'),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        customFields: mapCastOfType<String, Object>(json, r'custom_fields') ?? const {},
        description: O11yJiraFieldConfig.fromJson(json[r'description']),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        issueType: mapValueOfType<String>(json, r'issue_type'),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        priority: mapValueOfType<String>(json, r'priority'),
        project: mapValueOfType<String>(json, r'project'),
        reopenDuration: mapValueOfType<Object>(json, r'reopen_duration'),
        reopenTransition: mapValueOfType<String>(json, r'reopen_transition'),
        resolveTransition: mapValueOfType<String>(json, r'resolve_transition'),
        summary: O11yJiraFieldConfig.fromJson(json[r'summary']),
        wontFixResolution: mapValueOfType<String>(json, r'wont_fix_resolution'),
      );
    }
    return null;
  }

  static List<O11yJiraConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yJiraConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yJiraConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yJiraConfig> mapFromJson(dynamic json) {
    final map = <String, O11yJiraConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yJiraConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yJiraConfig-objects as value to a dart map
  static Map<String, List<O11yJiraConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yJiraConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yJiraConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

