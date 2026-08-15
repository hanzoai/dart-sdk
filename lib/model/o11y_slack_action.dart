//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11ySlackAction {
  /// Returns a new [O11ySlackAction] instance.
  O11ySlackAction({
    this.confirm,
    this.name,
    this.style,
    this.text,
    this.type,
    this.url,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11ySlackConfirmationField? confirm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? style;

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
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11ySlackAction &&
    other.confirm == confirm &&
    other.name == name &&
    other.style == style &&
    other.text == text &&
    other.type == type &&
    other.url == url &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (confirm == null ? 0 : confirm!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (style == null ? 0 : style!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11ySlackAction[confirm=$confirm, name=$name, style=$style, text=$text, type=$type, url=$url, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.confirm != null) {
      json[r'confirm'] = this.confirm;
    } else {
      json[r'confirm'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.style != null) {
      json[r'style'] = this.style;
    } else {
      json[r'style'] = null;
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
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11ySlackAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11ySlackAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11ySlackAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11ySlackAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11ySlackAction(
        confirm: O11ySlackConfirmationField.fromJson(json[r'confirm']),
        name: mapValueOfType<String>(json, r'name'),
        style: mapValueOfType<String>(json, r'style'),
        text: mapValueOfType<String>(json, r'text'),
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11ySlackAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11ySlackAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11ySlackAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11ySlackAction> mapFromJson(dynamic json) {
    final map = <String, O11ySlackAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11ySlackAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11ySlackAction-objects as value to a dart map
  static Map<String, List<O11ySlackAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11ySlackAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11ySlackAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

