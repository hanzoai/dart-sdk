//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySlackConfirmationField {
  /// Returns a new [O11ySlackConfirmationField] instance.
  O11ySlackConfirmationField({
    this.dismissText,
    this.okText,
    this.text,
    this.title,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dismissText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? okText;

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
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySlackConfirmationField &&
    other.dismissText == dismissText &&
    other.okText == okText &&
    other.text == text &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dismissText == null ? 0 : dismissText!.hashCode) +
    (okText == null ? 0 : okText!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'O11ySlackConfirmationField[dismissText=$dismissText, okText=$okText, text=$text, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dismissText != null) {
      json[r'dismiss_text'] = this.dismissText;
    } else {
      json[r'dismiss_text'] = null;
    }
    if (this.okText != null) {
      json[r'ok_text'] = this.okText;
    } else {
      json[r'ok_text'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySlackConfirmationField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySlackConfirmationField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySlackConfirmationField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySlackConfirmationField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySlackConfirmationField(
        dismissText: mapValueOfType<String>(json, r'dismiss_text'),
        okText: mapValueOfType<String>(json, r'ok_text'),
        text: mapValueOfType<String>(json, r'text'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<O11ySlackConfirmationField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySlackConfirmationField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySlackConfirmationField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySlackConfirmationField> mapFromJson(dynamic json) {
    final map = <String, O11ySlackConfirmationField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySlackConfirmationField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySlackConfirmationField-objects as value to a dart map
  static Map<String, List<O11ySlackConfirmationField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySlackConfirmationField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySlackConfirmationField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

