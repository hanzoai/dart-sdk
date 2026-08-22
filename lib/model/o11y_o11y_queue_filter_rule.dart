//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yQueueFilterRule {
  /// Returns a new [O11yO11yQueueFilterRule] instance.
  O11yO11yQueueFilterRule({
    this.key,
    this.op,
    this.value,
  });
  /// Key names the attribute the predicate tests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yQueueFilterKey? key;

  /// Op is the comparison, e.g. =, !=, in, contains.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? op;

  /// Value is the operand; its JSON type follows the attribute's dataType.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yQueueFilterRule &&
    other.key == key &&
    other.op == op &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (op == null ? 0 : op!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'O11yO11yQueueFilterRule[key=$key, op=$op, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.op != null) {
      json[r'op'] = this.op;
    } else {
      json[r'op'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yQueueFilterRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yQueueFilterRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yQueueFilterRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yQueueFilterRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yQueueFilterRule(
        key: O11yO11yQueueFilterKey.fromJson(json[r'key']),
        op: mapValueOfType<String>(json, r'op'),
        value: mapValueOfType<Object>(json, r'value'),
      );
    }
    return null;
  }

  static List<O11yO11yQueueFilterRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yQueueFilterRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yQueueFilterRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yQueueFilterRule> mapFromJson(dynamic json) {
    final map = <String, O11yO11yQueueFilterRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yQueueFilterRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yQueueFilterRule-objects as value to a dart map
  static Map<String, List<O11yO11yQueueFilterRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yQueueFilterRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yQueueFilterRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

