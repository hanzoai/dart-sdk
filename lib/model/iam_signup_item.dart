//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamSignupItem {
  /// Returns a new [IamSignupItem] instance.
  IamSignupItem({
    this.customCss,
    this.label,
    this.name,
    this.options = const [],
    this.placeholder,
    this.prompted,
    this.regex,
    this.required_,
    this.rule,
    this.type,
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
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<String> options;

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
  bool? prompted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? required_;

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
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? visible;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamSignupItem &&
    other.customCss == customCss &&
    other.label == label &&
    other.name == name &&
    _deepEquality.equals(other.options, options) &&
    other.placeholder == placeholder &&
    other.prompted == prompted &&
    other.regex == regex &&
    other.required_ == required_ &&
    other.rule == rule &&
    other.type == type &&
    other.visible == visible;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customCss == null ? 0 : customCss!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (options.hashCode) +
    (placeholder == null ? 0 : placeholder!.hashCode) +
    (prompted == null ? 0 : prompted!.hashCode) +
    (regex == null ? 0 : regex!.hashCode) +
    (required_ == null ? 0 : required_!.hashCode) +
    (rule == null ? 0 : rule!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (visible == null ? 0 : visible!.hashCode);

  @override
  String toString() => 'IamSignupItem[customCss=$customCss, label=$label, name=$name, options=$options, placeholder=$placeholder, prompted=$prompted, regex=$regex, required_=$required_, rule=$rule, type=$type, visible=$visible]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customCss != null) {
      json[r'customCss'] = this.customCss;
    } else {
      json[r'customCss'] = null;
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
      json[r'options'] = this.options;
    if (this.placeholder != null) {
      json[r'placeholder'] = this.placeholder;
    } else {
      json[r'placeholder'] = null;
    }
    if (this.prompted != null) {
      json[r'prompted'] = this.prompted;
    } else {
      json[r'prompted'] = null;
    }
    if (this.regex != null) {
      json[r'regex'] = this.regex;
    } else {
      json[r'regex'] = null;
    }
    if (this.required_ != null) {
      json[r'required'] = this.required_;
    } else {
      json[r'required'] = null;
    }
    if (this.rule != null) {
      json[r'rule'] = this.rule;
    } else {
      json[r'rule'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.visible != null) {
      json[r'visible'] = this.visible;
    } else {
      json[r'visible'] = null;
    }
    return json;
  }

  /// Returns a new [IamSignupItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamSignupItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamSignupItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamSignupItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamSignupItem(
        customCss: mapValueOfType<String>(json, r'customCss'),
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
        options: json[r'options'] is Iterable
            ? (json[r'options'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        placeholder: mapValueOfType<String>(json, r'placeholder'),
        prompted: mapValueOfType<bool>(json, r'prompted'),
        regex: mapValueOfType<String>(json, r'regex'),
        required_: mapValueOfType<bool>(json, r'required'),
        rule: mapValueOfType<String>(json, r'rule'),
        type: mapValueOfType<String>(json, r'type'),
        visible: mapValueOfType<bool>(json, r'visible'),
      );
    }
    return null;
  }

  static List<IamSignupItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamSignupItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamSignupItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamSignupItem> mapFromJson(dynamic json) {
    final map = <String, IamSignupItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamSignupItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamSignupItem-objects as value to a dart map
  static Map<String, List<IamSignupItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamSignupItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamSignupItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

