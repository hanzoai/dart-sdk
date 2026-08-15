//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yIncidentioConfig {
  /// Returns a new [O11yIncidentioConfig] instance.
  O11yIncidentioConfig({
    this.notifierConfig,
    this.alertSourceToken,
    this.alertSourceTokenFile,
    this.httpConfig,
    this.maxAlerts,
    this.timeout,
    this.url,
    this.urlFile,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  Object? alertSourceToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alertSourceTokenFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yHTTPClientConfig? httpConfig;

  /// MaxAlerts is the maximum number of alerts to be sent per incident.io message. Alerts exceeding this threshold will be truncated. Setting this to 0 allows an unlimited number of alerts. Note that if the payload exceeds incident.io's size limits, you will receive a 429 response and alerts will not be ingested.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxAlerts;

  /// Timeout is the maximum time allowed to invoke incident.io. Setting this to 0 does not impose a timeout.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeout;

  Object? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yIncidentioConfig &&
    other.notifierConfig == notifierConfig &&
    other.alertSourceToken == alertSourceToken &&
    other.alertSourceTokenFile == alertSourceTokenFile &&
    other.httpConfig == httpConfig &&
    other.maxAlerts == maxAlerts &&
    other.timeout == timeout &&
    other.url == url &&
    other.urlFile == urlFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (alertSourceToken == null ? 0 : alertSourceToken!.hashCode) +
    (alertSourceTokenFile == null ? 0 : alertSourceTokenFile!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (maxAlerts == null ? 0 : maxAlerts!.hashCode) +
    (timeout == null ? 0 : timeout!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (urlFile == null ? 0 : urlFile!.hashCode);

  @override
  String toString() => 'O11yIncidentioConfig[notifierConfig=$notifierConfig, alertSourceToken=$alertSourceToken, alertSourceTokenFile=$alertSourceTokenFile, httpConfig=$httpConfig, maxAlerts=$maxAlerts, timeout=$timeout, url=$url, urlFile=$urlFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.alertSourceToken != null) {
      json[r'alert_source_token'] = this.alertSourceToken;
    } else {
      json[r'alert_source_token'] = null;
    }
    if (this.alertSourceTokenFile != null) {
      json[r'alert_source_token_file'] = this.alertSourceTokenFile;
    } else {
      json[r'alert_source_token_file'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
    if (this.maxAlerts != null) {
      json[r'max_alerts'] = this.maxAlerts;
    } else {
      json[r'max_alerts'] = null;
    }
    if (this.timeout != null) {
      json[r'timeout'] = this.timeout;
    } else {
      json[r'timeout'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.urlFile != null) {
      json[r'url_file'] = this.urlFile;
    } else {
      json[r'url_file'] = null;
    }
    return json;
  }

  /// Returns a new [O11yIncidentioConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yIncidentioConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yIncidentioConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yIncidentioConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yIncidentioConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        alertSourceToken: mapValueOfType<Object>(json, r'alert_source_token'),
        alertSourceTokenFile: mapValueOfType<String>(json, r'alert_source_token_file'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        maxAlerts: mapValueOfType<int>(json, r'max_alerts'),
        timeout: mapValueOfType<int>(json, r'timeout'),
        url: mapValueOfType<Object>(json, r'url'),
        urlFile: mapValueOfType<String>(json, r'url_file'),
      );
    }
    return null;
  }

  static List<O11yIncidentioConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yIncidentioConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yIncidentioConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yIncidentioConfig> mapFromJson(dynamic json) {
    final map = <String, O11yIncidentioConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yIncidentioConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yIncidentioConfig-objects as value to a dart map
  static Map<String, List<O11yIncidentioConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yIncidentioConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yIncidentioConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

