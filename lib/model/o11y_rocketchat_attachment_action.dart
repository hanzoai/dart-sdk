//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yRocketchatAttachmentAction {
  /// Returns a new [O11yRocketchatAttachmentAction] instance.
  O11yRocketchatAttachmentAction({
    this.imageUrl,
    this.isWebview,
    this.msg,
    this.msgInChatWindow,
    this.msgProcessingType,
    this.text,
    this.type,
    this.url,
    this.webviewHeightRatio,
  });
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
  bool? isWebview;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? msg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? msgInChatWindow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? msgProcessingType;

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
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webviewHeightRatio;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yRocketchatAttachmentAction &&
    other.imageUrl == imageUrl &&
    other.isWebview == isWebview &&
    other.msg == msg &&
    other.msgInChatWindow == msgInChatWindow &&
    other.msgProcessingType == msgProcessingType &&
    other.text == text &&
    other.type == type &&
    other.url == url &&
    other.webviewHeightRatio == webviewHeightRatio;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (isWebview == null ? 0 : isWebview!.hashCode) +
    (msg == null ? 0 : msg!.hashCode) +
    (msgInChatWindow == null ? 0 : msgInChatWindow!.hashCode) +
    (msgProcessingType == null ? 0 : msgProcessingType!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (webviewHeightRatio == null ? 0 : webviewHeightRatio!.hashCode);

  @override
  String toString() => 'O11yRocketchatAttachmentAction[imageUrl=$imageUrl, isWebview=$isWebview, msg=$msg, msgInChatWindow=$msgInChatWindow, msgProcessingType=$msgProcessingType, text=$text, type=$type, url=$url, webviewHeightRatio=$webviewHeightRatio]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    if (this.isWebview != null) {
      json[r'is_webview'] = this.isWebview;
    } else {
      json[r'is_webview'] = null;
    }
    if (this.msg != null) {
      json[r'msg'] = this.msg;
    } else {
      json[r'msg'] = null;
    }
    if (this.msgInChatWindow != null) {
      json[r'msg_in_chat_window'] = this.msgInChatWindow;
    } else {
      json[r'msg_in_chat_window'] = null;
    }
    if (this.msgProcessingType != null) {
      json[r'msg_processing_type'] = this.msgProcessingType;
    } else {
      json[r'msg_processing_type'] = null;
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
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.webviewHeightRatio != null) {
      json[r'webview_height_ratio'] = this.webviewHeightRatio;
    } else {
      json[r'webview_height_ratio'] = null;
    }
    return json;
  }

  /// Returns a new [O11yRocketchatAttachmentAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yRocketchatAttachmentAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yRocketchatAttachmentAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yRocketchatAttachmentAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yRocketchatAttachmentAction(
        imageUrl: mapValueOfType<String>(json, r'image_url'),
        isWebview: mapValueOfType<bool>(json, r'is_webview'),
        msg: mapValueOfType<String>(json, r'msg'),
        msgInChatWindow: mapValueOfType<bool>(json, r'msg_in_chat_window'),
        msgProcessingType: mapValueOfType<String>(json, r'msg_processing_type'),
        text: mapValueOfType<String>(json, r'text'),
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
        webviewHeightRatio: mapValueOfType<String>(json, r'webview_height_ratio'),
      );
    }
    return null;
  }

  static List<O11yRocketchatAttachmentAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yRocketchatAttachmentAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yRocketchatAttachmentAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yRocketchatAttachmentAction> mapFromJson(dynamic json) {
    final map = <String, O11yRocketchatAttachmentAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yRocketchatAttachmentAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yRocketchatAttachmentAction-objects as value to a dart map
  static Map<String, List<O11yRocketchatAttachmentAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yRocketchatAttachmentAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yRocketchatAttachmentAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

