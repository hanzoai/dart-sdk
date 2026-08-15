//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPushoverConfig {
  /// Returns a new [O11yPushoverConfig] instance.
  O11yPushoverConfig({
    this.notifierConfig,
    this.device,
    this.expire,
    this.html,
    this.httpConfig,
    this.message,
    this.monospace,
    this.priority,
    this.retry,
    this.sound,
    this.title,
    this.token,
    this.tokenFile,
    this.ttl,
    this.url,
    this.urlTitle,
    this.userKey,
    this.userKeyFile,
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
  String? device;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? html;

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
  bool? monospace;

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
  int? retry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sound;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  Object? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlTitle;

  Object? userKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userKeyFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPushoverConfig &&
    other.notifierConfig == notifierConfig &&
    other.device == device &&
    other.expire == expire &&
    other.html == html &&
    other.httpConfig == httpConfig &&
    other.message == message &&
    other.monospace == monospace &&
    other.priority == priority &&
    other.retry == retry &&
    other.sound == sound &&
    other.title == title &&
    other.token == token &&
    other.tokenFile == tokenFile &&
    other.ttl == ttl &&
    other.url == url &&
    other.urlTitle == urlTitle &&
    other.userKey == userKey &&
    other.userKeyFile == userKeyFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (device == null ? 0 : device!.hashCode) +
    (expire == null ? 0 : expire!.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (monospace == null ? 0 : monospace!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (retry == null ? 0 : retry!.hashCode) +
    (sound == null ? 0 : sound!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (tokenFile == null ? 0 : tokenFile!.hashCode) +
    (ttl == null ? 0 : ttl!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (urlTitle == null ? 0 : urlTitle!.hashCode) +
    (userKey == null ? 0 : userKey!.hashCode) +
    (userKeyFile == null ? 0 : userKeyFile!.hashCode);

  @override
  String toString() => 'O11yPushoverConfig[notifierConfig=$notifierConfig, device=$device, expire=$expire, html=$html, httpConfig=$httpConfig, message=$message, monospace=$monospace, priority=$priority, retry=$retry, sound=$sound, title=$title, token=$token, tokenFile=$tokenFile, ttl=$ttl, url=$url, urlTitle=$urlTitle, userKey=$userKey, userKeyFile=$userKeyFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
    if (this.device != null) {
      json[r'device'] = this.device;
    } else {
      json[r'device'] = null;
    }
    if (this.expire != null) {
      json[r'expire'] = this.expire;
    } else {
      json[r'expire'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
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
    if (this.monospace != null) {
      json[r'monospace'] = this.monospace;
    } else {
      json[r'monospace'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.retry != null) {
      json[r'retry'] = this.retry;
    } else {
      json[r'retry'] = null;
    }
    if (this.sound != null) {
      json[r'sound'] = this.sound;
    } else {
      json[r'sound'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
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
    if (this.ttl != null) {
      json[r'ttl'] = this.ttl;
    } else {
      json[r'ttl'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.urlTitle != null) {
      json[r'url_title'] = this.urlTitle;
    } else {
      json[r'url_title'] = null;
    }
    if (this.userKey != null) {
      json[r'user_key'] = this.userKey;
    } else {
      json[r'user_key'] = null;
    }
    if (this.userKeyFile != null) {
      json[r'user_key_file'] = this.userKeyFile;
    } else {
      json[r'user_key_file'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPushoverConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPushoverConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPushoverConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPushoverConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPushoverConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        device: mapValueOfType<String>(json, r'device'),
        expire: mapValueOfType<int>(json, r'expire'),
        html: mapValueOfType<bool>(json, r'html'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        message: mapValueOfType<String>(json, r'message'),
        monospace: mapValueOfType<bool>(json, r'monospace'),
        priority: mapValueOfType<String>(json, r'priority'),
        retry: mapValueOfType<int>(json, r'retry'),
        sound: mapValueOfType<String>(json, r'sound'),
        title: mapValueOfType<String>(json, r'title'),
        token: mapValueOfType<Object>(json, r'token'),
        tokenFile: mapValueOfType<String>(json, r'token_file'),
        ttl: mapValueOfType<int>(json, r'ttl'),
        url: mapValueOfType<String>(json, r'url'),
        urlTitle: mapValueOfType<String>(json, r'url_title'),
        userKey: mapValueOfType<Object>(json, r'user_key'),
        userKeyFile: mapValueOfType<String>(json, r'user_key_file'),
      );
    }
    return null;
  }

  static List<O11yPushoverConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPushoverConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPushoverConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPushoverConfig> mapFromJson(dynamic json) {
    final map = <String, O11yPushoverConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPushoverConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPushoverConfig-objects as value to a dart map
  static Map<String, List<O11yPushoverConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPushoverConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPushoverConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

