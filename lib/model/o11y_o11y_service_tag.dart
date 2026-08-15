//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yServiceTag {
  /// Returns a new [O11yO11yServiceTag] instance.
  O11yO11yServiceTag({
    this.boolValues = const [],
    this.key,
    this.numberValues = const [],
    this.operator_,
    this.stringValues = const [],
    this.tagType,
  });

  /// BoolValues are the boolean operands, when the attribute is a bool.
  List<bool> boolValues;

  /// Key is the span attribute to test.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// NumberValues are the numeric operands, when the attribute is a number.
  List<num> numberValues;

  /// Operator is how to test it, e.g. in, not_in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operator_;

  /// StringValues are the string operands, when the attribute is a string.
  List<String> stringValues;

  /// TagType says which plane the attribute lives on, e.g. tag or resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tagType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yServiceTag &&
    _deepEquality.equals(other.boolValues, boolValues) &&
    other.key == key &&
    _deepEquality.equals(other.numberValues, numberValues) &&
    other.operator_ == operator_ &&
    _deepEquality.equals(other.stringValues, stringValues) &&
    other.tagType == tagType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (boolValues.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (numberValues.hashCode) +
    (operator_ == null ? 0 : operator_!.hashCode) +
    (stringValues.hashCode) +
    (tagType == null ? 0 : tagType!.hashCode);

  @override
  String toString() => 'O11yO11yServiceTag[boolValues=$boolValues, key=$key, numberValues=$numberValues, operator_=$operator_, stringValues=$stringValues, tagType=$tagType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'BoolValues'] = this.boolValues;
    if (this.key != null) {
      json[r'Key'] = this.key;
    } else {
      json[r'Key'] = null;
    }
      json[r'NumberValues'] = this.numberValues;
    if (this.operator_ != null) {
      json[r'Operator'] = this.operator_;
    } else {
      json[r'Operator'] = null;
    }
      json[r'StringValues'] = this.stringValues;
    if (this.tagType != null) {
      json[r'TagType'] = this.tagType;
    } else {
      json[r'TagType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yServiceTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yServiceTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yServiceTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yServiceTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yServiceTag(
        boolValues: json[r'BoolValues'] is Iterable
            ? (json[r'BoolValues'] as Iterable).cast<bool>().toList(growable: false)
            : const [],
        key: mapValueOfType<String>(json, r'Key'),
        numberValues: json[r'NumberValues'] is Iterable
            ? (json[r'NumberValues'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        operator_: mapValueOfType<String>(json, r'Operator'),
        stringValues: json[r'StringValues'] is Iterable
            ? (json[r'StringValues'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tagType: mapValueOfType<String>(json, r'TagType'),
      );
    }
    return null;
  }

  static List<O11yO11yServiceTag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yServiceTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yServiceTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yServiceTag> mapFromJson(dynamic json) {
    final map = <String, O11yO11yServiceTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yServiceTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yServiceTag-objects as value to a dart map
  static Map<String, List<O11yO11yServiceTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yServiceTag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yServiceTag.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

