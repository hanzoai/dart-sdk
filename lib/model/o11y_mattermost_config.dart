//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMattermostConfig {
  /// Returns a new [O11yMattermostConfig] instance.
  O11yMattermostConfig({
    this.notifierConfig,
    this.attachments = const [],
    this.channel,
    this.httpConfig,
    this.iconEmoji,
    this.iconUrl,
    this.priority,
    this.props,
    this.text,
    this.type,
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

  List<O11yMattermostAttachment> attachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

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
  String? iconEmoji;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yMattermostPriority? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yMattermostProps? props;

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
  String? type;

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
  bool operator ==(Object other) => identical(this, other) || other is O11yMattermostConfig &&
    other.notifierConfig == notifierConfig &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.channel == channel &&
    other.httpConfig == httpConfig &&
    other.iconEmoji == iconEmoji &&
    other.iconUrl == iconUrl &&
    other.priority == priority &&
    other.props == props &&
    other.text == text &&
    other.type == type &&
    other.username == username &&
    other.webhookUrl == webhookUrl &&
    other.webhookUrlFile == webhookUrlFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (attachments.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (iconEmoji == null ? 0 : iconEmoji!.hashCode) +
    (iconUrl == null ? 0 : iconUrl!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (props == null ? 0 : props!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (webhookUrl == null ? 0 : webhookUrl!.hashCode) +
    (webhookUrlFile == null ? 0 : webhookUrlFile!.hashCode);

  @override
  String toString() => 'O11yMattermostConfig[notifierConfig=$notifierConfig, attachments=$attachments, channel=$channel, httpConfig=$httpConfig, iconEmoji=$iconEmoji, iconUrl=$iconUrl, priority=$priority, props=$props, text=$text, type=$type, username=$username, webhookUrl=$webhookUrl, webhookUrlFile=$webhookUrlFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
      json[r'attachments'] = this.attachments;
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
    }
    if (this.iconEmoji != null) {
      json[r'icon_emoji'] = this.iconEmoji;
    } else {
      json[r'icon_emoji'] = null;
    }
    if (this.iconUrl != null) {
      json[r'icon_url'] = this.iconUrl;
    } else {
      json[r'icon_url'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.props != null) {
      json[r'props'] = this.props;
    } else {
      json[r'props'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
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

  /// Returns a new [O11yMattermostConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMattermostConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMattermostConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMattermostConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMattermostConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        attachments: O11yMattermostAttachment.listFromJson(json[r'attachments']),
        channel: mapValueOfType<String>(json, r'channel'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        iconEmoji: mapValueOfType<String>(json, r'icon_emoji'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        priority: O11yMattermostPriority.fromJson(json[r'priority']),
        props: O11yMattermostProps.fromJson(json[r'props']),
        text: mapValueOfType<String>(json, r'text'),
        type: mapValueOfType<String>(json, r'type'),
        username: mapValueOfType<String>(json, r'username'),
        webhookUrl: mapValueOfType<Object>(json, r'webhook_url'),
        webhookUrlFile: mapValueOfType<String>(json, r'webhook_url_file'),
      );
    }
    return null;
  }

  static List<O11yMattermostConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMattermostConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMattermostConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMattermostConfig> mapFromJson(dynamic json) {
    final map = <String, O11yMattermostConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMattermostConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMattermostConfig-objects as value to a dart map
  static Map<String, List<O11yMattermostConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMattermostConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMattermostConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

