//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TemplateConfigOption {
  /// Returns a new [TemplateConfigOption] instance.
  TemplateConfigOption({
    this.default_,
    this.description,
    this.options = const [],
    this.parameter,
    this.required_,
    this.type,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? default_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<String> options;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parameter;

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
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateConfigOption &&
    other.default_ == default_ &&
    other.description == description &&
    _deepEquality.equals(other.options, options) &&
    other.parameter == parameter &&
    other.required_ == required_ &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (default_ == null ? 0 : default_!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (options.hashCode) +
    (parameter == null ? 0 : parameter!.hashCode) +
    (required_ == null ? 0 : required_!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'TemplateConfigOption[default_=$default_, description=$description, options=$options, parameter=$parameter, required_=$required_, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'options'] = this.options;
    if (this.parameter != null) {
      json[r'parameter'] = this.parameter;
    } else {
      json[r'parameter'] = null;
    }
    if (this.required_ != null) {
      json[r'required'] = this.required_;
    } else {
      json[r'required'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [TemplateConfigOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateConfigOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateConfigOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateConfigOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateConfigOption(
        default_: mapValueOfType<String>(json, r'default'),
        description: mapValueOfType<String>(json, r'description'),
        options: json[r'options'] is Iterable
            ? (json[r'options'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        parameter: mapValueOfType<String>(json, r'parameter'),
        required_: mapValueOfType<bool>(json, r'required'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<TemplateConfigOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateConfigOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateConfigOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateConfigOption> mapFromJson(dynamic json) {
    final map = <String, TemplateConfigOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateConfigOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateConfigOption-objects as value to a dart map
  static Map<String, List<TemplateConfigOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateConfigOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateConfigOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

