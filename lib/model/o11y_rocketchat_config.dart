//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yRocketchatConfig {
  /// Returns a new [O11yRocketchatConfig] instance.
  O11yRocketchatConfig({
    this.notifierConfig,
    this.actions = const [],
    this.apiUrl,
    this.channel,
    this.color,
    this.emoji,
    this.fields = const [],
    this.httpConfig,
    this.iconUrl,
    this.imageUrl,
    this.linkNames,
    this.shortFields,
    this.text,
    this.thumbUrl,
    this.title,
    this.titleLink,
    this.token,
    this.tokenFile,
    this.tokenId,
    this.tokenIdFile,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yNotifierConfig? notifierConfig;

  List<O11yRocketchatAttachmentAction> actions;

  Object? apiUrl;

  /// RocketChat channel override, (like #other-channel or @username).
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
  String? emoji;

  List<O11yRocketchatAttachmentField> fields;

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

  Object? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenFile;

  Object? tokenId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenIdFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yRocketchatConfig &&
    other.notifierConfig == notifierConfig &&
    _deepEquality.equals(other.actions, actions) &&
    other.apiUrl == apiUrl &&
    other.channel == channel &&
    other.color == color &&
    other.emoji == emoji &&
    _deepEquality.equals(other.fields, fields) &&
    other.httpConfig == httpConfig &&
    other.iconUrl == iconUrl &&
    other.imageUrl == imageUrl &&
    other.linkNames == linkNames &&
    other.shortFields == shortFields &&
    other.text == text &&
    other.thumbUrl == thumbUrl &&
    other.title == title &&
    other.titleLink == titleLink &&
    other.token == token &&
    other.tokenFile == tokenFile &&
    other.tokenId == tokenId &&
    other.tokenIdFile == tokenIdFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notifierConfig == null ? 0 : notifierConfig!.hashCode) +
    (actions.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (emoji == null ? 0 : emoji!.hashCode) +
    (fields.hashCode) +
    (httpConfig == null ? 0 : httpConfig!.hashCode) +
    (iconUrl == null ? 0 : iconUrl!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (linkNames == null ? 0 : linkNames!.hashCode) +
    (shortFields == null ? 0 : shortFields!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (thumbUrl == null ? 0 : thumbUrl!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (titleLink == null ? 0 : titleLink!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (tokenFile == null ? 0 : tokenFile!.hashCode) +
    (tokenId == null ? 0 : tokenId!.hashCode) +
    (tokenIdFile == null ? 0 : tokenIdFile!.hashCode);

  @override
  String toString() => 'O11yRocketchatConfig[notifierConfig=$notifierConfig, actions=$actions, apiUrl=$apiUrl, channel=$channel, color=$color, emoji=$emoji, fields=$fields, httpConfig=$httpConfig, iconUrl=$iconUrl, imageUrl=$imageUrl, linkNames=$linkNames, shortFields=$shortFields, text=$text, thumbUrl=$thumbUrl, title=$title, titleLink=$titleLink, token=$token, tokenFile=$tokenFile, tokenId=$tokenId, tokenIdFile=$tokenIdFile]';

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
    if (this.emoji != null) {
      json[r'emoji'] = this.emoji;
    } else {
      json[r'emoji'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.httpConfig != null) {
      json[r'http_config'] = this.httpConfig;
    } else {
      json[r'http_config'] = null;
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
    if (this.tokenId != null) {
      json[r'token_id'] = this.tokenId;
    } else {
      json[r'token_id'] = null;
    }
    if (this.tokenIdFile != null) {
      json[r'token_id_file'] = this.tokenIdFile;
    } else {
      json[r'token_id_file'] = null;
    }
    return json;
  }

  /// Returns a new [O11yRocketchatConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yRocketchatConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yRocketchatConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yRocketchatConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yRocketchatConfig(
        notifierConfig: O11yNotifierConfig.fromJson(json[r'NotifierConfig']),
        actions: O11yRocketchatAttachmentAction.listFromJson(json[r'actions']),
        apiUrl: mapValueOfType<Object>(json, r'api_url'),
        channel: mapValueOfType<String>(json, r'channel'),
        color: mapValueOfType<String>(json, r'color'),
        emoji: mapValueOfType<String>(json, r'emoji'),
        fields: O11yRocketchatAttachmentField.listFromJson(json[r'fields']),
        httpConfig: O11yHTTPClientConfig.fromJson(json[r'http_config']),
        iconUrl: mapValueOfType<String>(json, r'icon_url'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        linkNames: mapValueOfType<bool>(json, r'link_names'),
        shortFields: mapValueOfType<bool>(json, r'short_fields'),
        text: mapValueOfType<String>(json, r'text'),
        thumbUrl: mapValueOfType<String>(json, r'thumb_url'),
        title: mapValueOfType<String>(json, r'title'),
        titleLink: mapValueOfType<String>(json, r'title_link'),
        token: mapValueOfType<Object>(json, r'token'),
        tokenFile: mapValueOfType<String>(json, r'token_file'),
        tokenId: mapValueOfType<Object>(json, r'token_id'),
        tokenIdFile: mapValueOfType<String>(json, r'token_id_file'),
      );
    }
    return null;
  }

  static List<O11yRocketchatConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yRocketchatConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yRocketchatConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yRocketchatConfig> mapFromJson(dynamic json) {
    final map = <String, O11yRocketchatConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yRocketchatConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yRocketchatConfig-objects as value to a dart map
  static Map<String, List<O11yRocketchatConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yRocketchatConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yRocketchatConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

