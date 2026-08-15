//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ConsoleSettingsHelp {
  /// Returns a new [ConsoleSettingsHelp] instance.
  ConsoleSettingsHelp({
    this.binaryUrls = const {},
    this.chatText,
    this.chatUrl,
  });

  Map<String, String> binaryUrls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chatText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chatUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsoleSettingsHelp &&
    _deepEquality.equals(other.binaryUrls, binaryUrls) &&
    other.chatText == chatText &&
    other.chatUrl == chatUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (binaryUrls.hashCode) +
    (chatText == null ? 0 : chatText!.hashCode) +
    (chatUrl == null ? 0 : chatUrl!.hashCode);

  @override
  String toString() => 'ConsoleSettingsHelp[binaryUrls=$binaryUrls, chatText=$chatText, chatUrl=$chatUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'binaryUrls'] = this.binaryUrls;
    if (this.chatText != null) {
      json[r'chatText'] = this.chatText;
    } else {
      json[r'chatText'] = null;
    }
    if (this.chatUrl != null) {
      json[r'chatUrl'] = this.chatUrl;
    } else {
      json[r'chatUrl'] = null;
    }
    return json;
  }

  /// Returns a new [ConsoleSettingsHelp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsoleSettingsHelp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsoleSettingsHelp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsoleSettingsHelp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsoleSettingsHelp(
        binaryUrls: mapCastOfType<String, String>(json, r'binaryUrls') ?? const {},
        chatText: mapValueOfType<String>(json, r'chatText'),
        chatUrl: mapValueOfType<String>(json, r'chatUrl'),
      );
    }
    return null;
  }

  static List<ConsoleSettingsHelp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsoleSettingsHelp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsoleSettingsHelp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsoleSettingsHelp> mapFromJson(dynamic json) {
    final map = <String, ConsoleSettingsHelp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsoleSettingsHelp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsoleSettingsHelp-objects as value to a dart map
  static Map<String, List<ConsoleSettingsHelp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsoleSettingsHelp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsoleSettingsHelp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

