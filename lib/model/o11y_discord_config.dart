//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yDiscordConfig {
  /// Returns a new [O11yDiscordConfig] instance.
  O11yDiscordConfig({
    this.notifierConfig,
    this.avatarUrl,
    this.content,
    this.httpConfig,
    this.message,
    this.title,
    this.username,
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
  String? avatarUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  Object? webhookUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookUrlFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yDiscordConfig &&
    other.notifierConfig == notifierConfig &&
    other.avatarUrl == avatarUrl &&
    other.content == content &&
    other.httpConfig == httpConfig &&
    other.message == message &&
    other.title == title &&
    other.username == username &&
    other.webhookUrl == webhookUrl &&
    other.webhookUrlFile == webhookUrlFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (avatarUrl == null ? 0 : avatarUrl!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (webhookUrl == null ? 0 : webhookUrl!.hashCode) +
    (webhookUrlFile == null ? 0 : webhookUrlFile!.hashCode);

  @override
  String toString() => 'O11yDiscordConfig[notifierConfig=$notifierConfig, avatarUrl=$avatarUrl, content=$content, httpConfig=$httpConfig, message=$message, title=$title, username=$username, webhookUrl=$webhookUrl, webhookUrlFile=$webhookUrlFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.avatarUrl != null) {
      json[r'avatar_url'] = this.avatarUrl;
    } else {
      json[r'avatar_url'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
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
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
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

  /// Returns a new [O11yDiscordConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yDiscordConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yDiscordConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yDiscordConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yDiscordConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        avatarUrl: mapValueOfType<String>(json, r'avatar_url'),
        content: mapValueOfType<String>(json, r'content'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        message: mapValueOfType<String>(json, r'message'),
        title: mapValueOfType<String>(json, r'title'),
        username: mapValueOfType<String>(json, r'username'),
        webhookUrl: mapValueOfType<Object>(json, r'webhook_url'),
        webhookUrlFile: mapValueOfType<String>(json, r'webhook_url_file'),
      );
    }
    return null;
  }

  static List<O11yDiscordConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yDiscordConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yDiscordConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yDiscordConfig> mapFromJson(dynamic json) {
    final map = <String, O11yDiscordConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yDiscordConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yDiscordConfig-objects as value to a dart map
  static Map<String, List<O11yDiscordConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yDiscordConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yDiscordConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

