//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySNSConfig {
  /// Returns a new [O11ySNSConfig] instance.
  O11ySNSConfig({
    this.notifierConfig,
    this.apiUrl,
    this.attributes = const {},
    this.httpConfig,
    this.message,
    this.phoneNumber,
    this.sigv4,
    this.subject,
    this.targetArn,
    this.topicArn,
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
  String? apiUrl;

  Map<String, String> attributes;

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
  String? phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11ySigV4Config? sigv4;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetArn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topicArn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySNSConfig &&
    other.notifierConfig == notifierConfig &&
    other.apiUrl == apiUrl &&
    _deepEquality.equals(other.attributes, attributes) &&
    other.httpConfig == httpConfig &&
    other.message == message &&
    other.phoneNumber == phoneNumber &&
    other.sigv4 == sigv4 &&
    other.subject == subject &&
    other.targetArn == targetArn &&
    other.topicArn == topicArn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (attributes.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (sigv4 == null ? 0 : sigv4!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (targetArn == null ? 0 : targetArn!.hashCode) +
    (topicArn == null ? 0 : topicArn!.hashCode);

  @override
  String toString() => 'O11ySNSConfig[notifierConfig=$notifierConfig, apiUrl=$apiUrl, attributes=$attributes, httpConfig=$httpConfig, message=$message, phoneNumber=$phoneNumber, sigv4=$sigv4, subject=$subject, targetArn=$targetArn, topicArn=$topicArn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
      json[r'attributes'] = this.attributes;
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
    if (this.phoneNumber != null) {
      json[r'phone_number'] = this.phoneNumber;
    } else {
      json[r'phone_number'] = null;
    }
    if (this.sigv4 != null) {
      json[r'sigv4'] = this.sigv4;
    } else {
      json[r'sigv4'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.targetArn != null) {
      json[r'target_arn'] = this.targetArn;
    } else {
      json[r'target_arn'] = null;
    }
    if (this.topicArn != null) {
      json[r'topic_arn'] = this.topicArn;
    } else {
      json[r'topic_arn'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySNSConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySNSConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySNSConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySNSConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySNSConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        apiUrl: mapValueOfType<String>(json, r'api_url'),
        attributes: mapCastOfType<String, String>(json, r'attributes') ?? const {},
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        message: mapValueOfType<String>(json, r'message'),
        phoneNumber: mapValueOfType<String>(json, r'phone_number'),
        sigv4: O11ySigV4Config.fromJson(json[r'sigv4']),
        subject: mapValueOfType<String>(json, r'subject'),
        targetArn: mapValueOfType<String>(json, r'target_arn'),
        topicArn: mapValueOfType<String>(json, r'topic_arn'),
      );
    }
    return null;
  }

  static List<O11ySNSConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySNSConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySNSConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySNSConfig> mapFromJson(dynamic json) {
    final map = <String, O11ySNSConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySNSConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySNSConfig-objects as value to a dart map
  static Map<String, List<O11ySNSConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySNSConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySNSConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

