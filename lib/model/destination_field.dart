//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DestinationField {
  /// Returns a new [DestinationField] instance.
  DestinationField({
    this.example,
    this.key,
    this.label,
    this.required_,
  });
  /// a sample value of the right shape (\"G-XXXXXXX\"), when one helps
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? example;

  /// the camelCase key on both the connect body and the stored config
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// human label for the console card's input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// when true, a connect that leaves it empty is refused 400
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? required_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DestinationField &&
    other.example == example &&
    other.key == key &&
    other.label == label &&
    other.required_ == required_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (example == null ? 0 : example!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (required_ == null ? 0 : required_!.hashCode);

  @override
  String toString() => 'DestinationField[example=$example, key=$key, label=$label, required_=$required_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.example != null) {
      json[r'example'] = this.example;
    } else {
      json[r'example'] = null;
    }
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
    if (this.required_ != null) {
      json[r'required'] = this.required_;
    } else {
      json[r'required'] = null;
    }
    return json;
  }

  /// Returns a new [DestinationField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DestinationField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DestinationField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DestinationField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DestinationField(
        example: mapValueOfType<String>(json, r'example'),
        key: mapValueOfType<String>(json, r'key'),
        label: mapValueOfType<String>(json, r'label'),
        required_: mapValueOfType<bool>(json, r'required'),
      );
    }
    return null;
  }

  static List<DestinationField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DestinationField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DestinationField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DestinationField> mapFromJson(dynamic json) {
    final map = <String, DestinationField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DestinationField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DestinationField-objects as value to a dart map
  static Map<String, List<DestinationField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DestinationField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DestinationField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

