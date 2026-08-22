//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTagQuery {
  /// Returns a new [O11yO11yTagQuery] instance.
  O11yO11yTagQuery({
    this.boolValues = const [],
    this.key,
    this.numberValues = const [],
    this.operator_,
    this.stringValues = const [],
    this.tagType,
  });
  /// BoolValues are the boolean values to test against.
  List<bool> boolValues;

  /// Key is the tag to test.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// NumberValues are the numeric values to test against.
  List<num> numberValues;

  /// Operator is the comparison, e.g. in, nin, contains, exists.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operator_;

  /// StringValues are the string values to test against.
  List<String> stringValues;

  /// TagType is where the tag lives, e.g. ResourceAttribute, SpanAttribute.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tagType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTagQuery &&
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
  String toString() => 'O11yO11yTagQuery[boolValues=$boolValues, key=$key, numberValues=$numberValues, operator_=$operator_, stringValues=$stringValues, tagType=$tagType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'boolValues'] = this.boolValues;
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
      json[r'numberValues'] = this.numberValues;
    if (this.operator_ != null) {
      json[r'operator'] = this.operator_;
    } else {
      json[r'operator'] = null;
    }
      json[r'stringValues'] = this.stringValues;
    if (this.tagType != null) {
      json[r'tagType'] = this.tagType;
    } else {
      json[r'tagType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yTagQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTagQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTagQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTagQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTagQuery(
        boolValues: json[r'boolValues'] is Iterable
            ? (json[r'boolValues'] as Iterable).cast<bool>().toList(growable: false)
            : const [],
        key: mapValueOfType<String>(json, r'key'),
        numberValues: json[r'numberValues'] is Iterable
            ? (json[r'numberValues'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        operator_: mapValueOfType<String>(json, r'operator'),
        stringValues: json[r'stringValues'] is Iterable
            ? (json[r'stringValues'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tagType: mapValueOfType<String>(json, r'tagType'),
      );
    }
    return null;
  }

  static List<O11yO11yTagQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTagQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTagQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTagQuery> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTagQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTagQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTagQuery-objects as value to a dart map
  static Map<String, List<O11yO11yTagQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTagQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTagQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

