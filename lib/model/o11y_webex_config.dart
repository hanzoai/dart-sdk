//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yWebexConfig {
  /// Returns a new [O11yWebexConfig] instance.
  O11yWebexConfig({
    this.notifierConfig,
    this.apiUrl,
    this.httpConfig,
    this.message,
    this.roomId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  Object? apiUrl;

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
  String? roomId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yWebexConfig &&
    other.notifierConfig == notifierConfig &&
    other.apiUrl == apiUrl &&
    other.httpConfig == httpConfig &&
    other.message == message &&
    other.roomId == roomId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (roomId == null ? 0 : roomId!.hashCode);

  @override
  String toString() => 'O11yWebexConfig[notifierConfig=$notifierConfig, apiUrl=$apiUrl, httpConfig=$httpConfig, message=$message, roomId=$roomId]';

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
    if (this.roomId != null) {
      json[r'room_id'] = this.roomId;
    } else {
      json[r'room_id'] = null;
    }
    return json;
  }

  /// Returns a new [O11yWebexConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yWebexConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yWebexConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yWebexConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yWebexConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        message: mapValueOfType<String>(json, r'message'),
        roomId: mapValueOfType<String>(json, r'room_id'),
      );
    }
    return null;
  }

  static List<O11yWebexConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yWebexConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yWebexConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yWebexConfig> mapFromJson(dynamic json) {
    final map = <String, O11yWebexConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yWebexConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yWebexConfig-objects as value to a dart map
  static Map<String, List<O11yWebexConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yWebexConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yWebexConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

