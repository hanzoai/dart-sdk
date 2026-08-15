//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMSTeamsConfig {
  /// Returns a new [O11yMSTeamsConfig] instance.
  O11yMSTeamsConfig({
    this.notifierConfig,
    this.httpConfig,
    this.summary,
    this.text,
    this.title,
    this.webhookUrl,
    this.webhookUrlFile,
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
  O11yHTTPClientConfig? httpConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  Object? webhookUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookUrlFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yMSTeamsConfig &&
    other.notifierConfig == notifierConfig &&
    other.httpConfig == httpConfig &&
    other.summary == summary &&
    other.text == text &&
    other.title == title &&
    other.webhookUrl == webhookUrl &&
    other.webhookUrlFile == webhookUrlFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (webhookUrl == null ? 0 : webhookUrl!.hashCode) +
    (webhookUrlFile == null ? 0 : webhookUrlFile!.hashCode);

  @override
  String toString() => 'O11yMSTeamsConfig[notifierConfig=$notifierConfig, httpConfig=$httpConfig, summary=$summary, text=$text, title=$title, webhookUrl=$webhookUrl, webhookUrlFile=$webhookUrlFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.webhookUrl != null) {
      json[r'webhook_url'] = this.webhookUrl;
    } else {
      json[r'webhook_url'] = null;
    }
    if (this.webhookUrlFile != null) {
      json[r'webhook_url_file'] = this.webhookUrlFile;
    } else {
      json[r'webhook_url_file'] = null;
    }
    return json;
  }

  /// Returns a new [O11yMSTeamsConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMSTeamsConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMSTeamsConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMSTeamsConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMSTeamsConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        summary: mapValueOfType<String>(json, r'summary'),
        text: mapValueOfType<String>(json, r'text'),
        title: mapValueOfType<String>(json, r'title'),
        webhookUrl: mapValueOfType<Object>(json, r'webhook_url'),
        webhookUrlFile: mapValueOfType<String>(json, r'webhook_url_file'),
      );
    }
    return null;
  }

  static List<O11yMSTeamsConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMSTeamsConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMSTeamsConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMSTeamsConfig> mapFromJson(dynamic json) {
    final map = <String, O11yMSTeamsConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMSTeamsConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMSTeamsConfig-objects as value to a dart map
  static Map<String, List<O11yMSTeamsConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMSTeamsConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMSTeamsConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

