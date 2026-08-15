//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamSigninItem {
  /// Returns a new [IamSigninItem] instance.
  IamSigninItem({
    this.customCss,
    this.isCustom,
    this.label,
    this.name,
    this.placeholder,
    this.rule,
    this.visible,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customCss;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCustom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

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
  String? placeholder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? visible;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamSigninItem &&
    other.customCss == customCss &&
    other.isCustom == isCustom &&
    other.label == label &&
    other.name == name &&
    other.placeholder == placeholder &&
    other.rule == rule &&
    other.visible == visible;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customCss == null ? 0 : customCss!.hashCode) +
    (isCustom == null ? 0 : isCustom!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (placeholder == null ? 0 : placeholder!.hashCode) +
    (rule == null ? 0 : rule!.hashCode) +
    (visible == null ? 0 : visible!.hashCode);

  @override
  String toString() => 'IamSigninItem[customCss=$customCss, isCustom=$isCustom, label=$label, name=$name, placeholder=$placeholder, rule=$rule, visible=$visible]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customCss != null) {
      json[r'customCss'] = this.customCss;
    } else {
      json[r'customCss'] = null;
    }
    if (this.isCustom != null) {
      json[r'isCustom'] = this.isCustom;
    } else {
      json[r'isCustom'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.placeholder != null) {
      json[r'placeholder'] = this.placeholder;
    } else {
      json[r'placeholder'] = null;
    }
    if (this.rule != null) {
      json[r'rule'] = this.rule;
    } else {
      json[r'rule'] = null;
    }
    if (this.visible != null) {
      json[r'visible'] = this.visible;
    } else {
      json[r'visible'] = null;
    }
    return json;
  }

  /// Returns a new [IamSigninItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamSigninItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamSigninItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamSigninItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamSigninItem(
        customCss: mapValueOfType<String>(json, r'customCss'),
        isCustom: mapValueOfType<bool>(json, r'isCustom'),
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
        placeholder: mapValueOfType<String>(json, r'placeholder'),
        rule: mapValueOfType<String>(json, r'rule'),
        visible: mapValueOfType<bool>(json, r'visible'),
      );
    }
    return null;
  }

  static List<IamSigninItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamSigninItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamSigninItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamSigninItem> mapFromJson(dynamic json) {
    final map = <String, IamSigninItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamSigninItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamSigninItem-objects as value to a dart map
  static Map<String, List<IamSigninItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamSigninItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamSigninItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

