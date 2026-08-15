//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yTelegramConfig {
  /// Returns a new [O11yTelegramConfig] instance.
  O11yTelegramConfig({
    this.notifierConfig,
    this.apiUrl,
    this.chat,
    this.chatFile,
    this.disableNotifications,
    this.httpConfig,
    this.message,
    this.messageThreadId,
    this.parseMode,
    this.token,
    this.tokenFile,
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
  int? chat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chatFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableNotifications;

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
  int? messageThreadId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parseMode;

  Object? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yTelegramConfig &&
    other.notifierConfig == notifierConfig &&
    other.apiUrl == apiUrl &&
    other.chat == chat &&
    other.chatFile == chatFile &&
    other.disableNotifications == disableNotifications &&
    other.httpConfig == httpConfig &&
    other.message == message &&
    other.messageThreadId == messageThreadId &&
    other.parseMode == parseMode &&
    other.token == token &&
    other.tokenFile == tokenFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (chat == null ? 0 : chat!.hashCode) +
    (chatFile == null ? 0 : chatFile!.hashCode) +
    (disableNotifications == null ? 0 : disableNotifications!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (messageThreadId == null ? 0 : messageThreadId!.hashCode) +
    (parseMode == null ? 0 : parseMode!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (tokenFile == null ? 0 : tokenFile!.hashCode);

  @override
  String toString() => 'O11yTelegramConfig[notifierConfig=$notifierConfig, apiUrl=$apiUrl, chat=$chat, chatFile=$chatFile, disableNotifications=$disableNotifications, httpConfig=$httpConfig, message=$message, messageThreadId=$messageThreadId, parseMode=$parseMode, token=$token, tokenFile=$tokenFile]';

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
    if (this.chat != null) {
      json[r'chat'] = this.chat;
    } else {
      json[r'chat'] = null;
    }
    if (this.chatFile != null) {
      json[r'chat_file'] = this.chatFile;
    } else {
      json[r'chat_file'] = null;
    }
    if (this.disableNotifications != null) {
      json[r'disable_notifications'] = this.disableNotifications;
    } else {
      json[r'disable_notifications'] = null;
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
    if (this.messageThreadId != null) {
      json[r'message_thread_id'] = this.messageThreadId;
    } else {
      json[r'message_thread_id'] = null;
    }
    if (this.parseMode != null) {
      json[r'parse_mode'] = this.parseMode;
    } else {
      json[r'parse_mode'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.tokenFile != null) {
      json[r'token_file'] = this.tokenFile;
    } else {
      json[r'token_file'] = null;
    }
    return json;
  }

  /// Returns a new [O11yTelegramConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yTelegramConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yTelegramConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yTelegramConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yTelegramConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        chat: mapValueOfType<int>(json, r'chat'),
        chatFile: mapValueOfType<String>(json, r'chat_file'),
        disableNotifications: mapValueOfType<bool>(json, r'disable_notifications'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        message: mapValueOfType<String>(json, r'message'),
        messageThreadId: mapValueOfType<int>(json, r'message_thread_id'),
        parseMode: mapValueOfType<String>(json, r'parse_mode'),
        token: mapValueOfType<Object>(json, r'token'),
        tokenFile: mapValueOfType<String>(json, r'token_file'),
      );
    }
    return null;
  }

  static List<O11yTelegramConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yTelegramConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yTelegramConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yTelegramConfig> mapFromJson(dynamic json) {
    final map = <String, O11yTelegramConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yTelegramConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yTelegramConfig-objects as value to a dart map
  static Map<String, List<O11yTelegramConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yTelegramConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yTelegramConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

