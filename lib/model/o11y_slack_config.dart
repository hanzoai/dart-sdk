//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySlackConfig {
  /// Returns a new [O11ySlackConfig] instance.
  O11ySlackConfig({
    this.notifierConfig,
    this.actions = const [],
    this.apiUrl,
    this.apiUrlFile,
    this.appToken,
    this.appTokenFile,
    this.appUrl,
    this.callbackId,
    this.channel,
    this.color,
    this.fallback,
    this.fields = const [],
    this.footer,
    this.httpConfig,
    this.iconEmoji,
    this.iconUrl,
    this.imageUrl,
    this.linkNames,
    this.messageText,
    this.mrkdwnIn = const [],
    this.pretext,
    this.shortFields,
    this.text,
    this.thumbUrl,
    this.timeout,
    this.title,
    this.titleLink,
    this.username,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  List<O11ySlackAction> actions;

  Object? apiUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiUrlFile;

  Object? appToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appTokenFile;

  Object? appUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? callbackId;

  /// Slack channel override, (like #other-channel or @username).
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
  String? color;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fallback;

  List<O11ySlackField> fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? footer;

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
  String? imageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? linkNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageText;

  List<String> mrkdwnIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pretext;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? shortFields;

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
  String? thumbUrl;

  /// Timeout is the maximum time allowed to invoke the slack. Setting this to 0 does not impose a timeout.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeout;

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
  String? titleLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySlackConfig &&
    other.notifierConfig == notifierConfig &&
    _deepEquality.equals(other.actions, actions) &&
    other.apiUrl == apiUrl &&
    other.apiUrlFile == apiUrlFile &&
    other.appToken == appToken &&
    other.appTokenFile == appTokenFile &&
    other.appUrl == appUrl &&
    other.callbackId == callbackId &&
    other.channel == channel &&
    other.color == color &&
    other.fallback == fallback &&
    _deepEquality.equals(other.fields, fields) &&
    other.footer == footer &&
    other.httpConfig == httpConfig &&
    other.iconEmoji == iconEmoji &&
    other.iconUrl == iconUrl &&
    other.imageUrl == imageUrl &&
    other.linkNames == linkNames &&
    other.messageText == messageText &&
    _deepEquality.equals(other.mrkdwnIn, mrkdwnIn) &&
    other.pretext == pretext &&
    other.shortFields == shortFields &&
    other.text == text &&
    other.thumbUrl == thumbUrl &&
    other.timeout == timeout &&
    other.title == title &&
    other.titleLink == titleLink &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (actions.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (apiUrlFile == null ? 0 : apiUrlFile!.hashCode) +
    (appToken == null ? 0 : appToken!.hashCode) +
    (appTokenFile == null ? 0 : appTokenFile!.hashCode) +
    (appUrl == null ? 0 : appUrl!.hashCode) +
    (callbackId == null ? 0 : callbackId!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (fallback == null ? 0 : fallback!.hashCode) +
    (fields.hashCode) +
    (footer == null ? 0 : footer!.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (iconEmoji == null ? 0 : iconEmoji!.hashCode) +
    (iconUrl == null ? 0 : iconUrl!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (linkNames == null ? 0 : linkNames!.hashCode) +
    (messageText == null ? 0 : messageText!.hashCode) +
    (mrkdwnIn.hashCode) +
    (pretext == null ? 0 : pretext!.hashCode) +
    (shortFields == null ? 0 : shortFields!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (thumbUrl == null ? 0 : thumbUrl!.hashCode) +
    (timeout == null ? 0 : timeout!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (titleLink == null ? 0 : titleLink!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'O11ySlackConfig[notifierConfig=$notifierConfig, actions=$actions, apiUrl=$apiUrl, apiUrlFile=$apiUrlFile, appToken=$appToken, appTokenFile=$appTokenFile, appUrl=$appUrl, callbackId=$callbackId, channel=$channel, color=$color, fallback=$fallback, fields=$fields, footer=$footer, httpConfig=$httpConfig, iconEmoji=$iconEmoji, iconUrl=$iconUrl, imageUrl=$imageUrl, linkNames=$linkNames, messageText=$messageText, mrkdwnIn=$mrkdwnIn, pretext=$pretext, shortFields=$shortFields, text=$text, thumbUrl=$thumbUrl, timeout=$timeout, title=$title, titleLink=$titleLink, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notifierConfig != null) {
      json[r'NotifierConfig'] = this.notifierConfig;
    } else {
      json[r'NotifierConfig'] = null;
    }
      json[r'actions'] = this.actions;
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
    if (this.apiUrlFile != null) {
      json[r'api_url_file'] = this.apiUrlFile;
    } else {
      json[r'api_url_file'] = null;
    }
    if (this.appToken != null) {
      json[r'app_token'] = this.appToken;
    } else {
      json[r'app_token'] = null;
    }
    if (this.appTokenFile != null) {
      json[r'app_token_file'] = this.appTokenFile;
    } else {
      json[r'app_token_file'] = null;
    }
    if (this.appUrl != null) {
      json[r'app_url'] = this.appUrl;
    } else {
      json[r'app_url'] = null;
    }
    if (this.callbackId != null) {
      json[r'callback_id'] = this.callbackId;
    } else {
      json[r'callback_id'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.fallback != null) {
      json[r'fallback'] = this.fallback;
    } else {
      json[r'fallback'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.footer != null) {
      json[r'footer'] = this.footer;
    } else {
      json[r'footer'] = null;
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
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.linkNames != null) {
      json[r'link_names'] = this.linkNames;
    } else {
      json[r'link_names'] = null;
    }
    if (this.messageText != null) {
      json[r'message_text'] = this.messageText;
    } else {
      json[r'message_text'] = null;
    }
      json[r'mrkdwn_in'] = this.mrkdwnIn;
    if (this.pretext != null) {
      json[r'pretext'] = this.pretext;
    } else {
      json[r'pretext'] = null;
    }
    if (this.shortFields != null) {
      json[r'short_fields'] = this.shortFields;
    } else {
      json[r'short_fields'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.thumbUrl != null) {
      json[r'thumb_url'] = this.thumbUrl;
    } else {
      json[r'thumb_url'] = null;
    }
    if (this.timeout != null) {
      json[r'timeout'] = this.timeout;
    } else {
      json[r'timeout'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.titleLink != null) {
      json[r'title_link'] = this.titleLink;
    } else {
      json[r'title_link'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySlackConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySlackConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySlackConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySlackConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySlackConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        actions: O11ySlackAction.listFromJson(json[r'actions']),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        apiUrlFile: mapValueOfType<String>(json, r'api_url_file'),
        appToken: mapValueOfType<Object>(json, r'app_token'),
        appTokenFile: mapValueOfType<String>(json, r'app_token_file'),
        appUrl: mapValueOfType<Object>(json, r'app_url'),
        callbackId: mapValueOfType<String>(json, r'callback_id'),
        channel: mapValueOfType<String>(json, r'channel'),
        color: mapValueOfType<String>(json, r'color'),
        fallback: mapValueOfType<String>(json, r'fallback'),
        fields: O11ySlackField.listFromJson(json[r'fields']),
        footer: mapValueOfType<String>(json, r'footer'),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        iconEmoji: mapValueOfType<String>(json, r'icon_emoji'),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        linkNames: mapValueOfType<bool>(json, r'link_names'),
        messageText: mapValueOfType<String>(json, r'message_text'),
        mrkdwnIn: json[r'mrkdwn_in'] is Iterable
            ? (json[r'mrkdwn_in'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pretext: mapValueOfType<String>(json, r'pretext'),
        shortFields: mapValueOfType<bool>(json, r'short_fields'),
        text: mapValueOfType<String>(json, r'text'),
        thumbUrl: mapValueOfType<String>(json, r'thumb_url'),
        timeout: mapValueOfType<int>(json, r'timeout'),
        title: mapValueOfType<String>(json, r'title'),
        titleLink: mapValueOfType<String>(json, r'title_link'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<O11ySlackConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySlackConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySlackConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySlackConfig> mapFromJson(dynamic json) {
    final map = <String, O11ySlackConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySlackConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySlackConfig-objects as value to a dart map
  static Map<String, List<O11ySlackConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySlackConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySlackConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

