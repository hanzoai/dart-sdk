//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Field {
  /// Returns a new [Field] instance.
  Field({
    this.key,
    this.label,
  });
  /// Key is the identifier the body substitutes ({{.key}}) and the key a generation's data map must carry. snake_case by convention across the built-ins — effective_date, company_name, governing_law. An override whose body references a key no Field declares is refused on save.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Label is the human prompt for whoever fills the value in — \"Governing law (state)\". It never reaches the rendered document; only Key does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Field &&
    other.key == key &&
    other.label == label;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (label == null ? 0 : label!.hashCode);

  @override
  String toString() => 'Field[key=$key, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    return json;
  }

  /// Returns a new [Field] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Field? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Field[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Field[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Field(
        key: mapValueOfType<String>(json, r'key'),
        label: mapValueOfType<String>(json, r'label'),
      );
    }
    return null;
  }

  static List<Field> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Field>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Field.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Field> mapFromJson(dynamic json) {
    final map = <String, Field>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Field.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Field-objects as value to a dart map
  static Map<String, List<Field>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Field>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Field.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

