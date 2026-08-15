//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageLine {
  /// Returns a new [UsageLine] instance.
  UsageLine({
    this.cents,
    this.label,
    this.tokens,
    this.units,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cents;

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
  int? tokens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? units;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageLine &&
    other.cents == cents &&
    other.label == label &&
    other.tokens == tokens &&
    other.units == units;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cents == null ? 0 : cents!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode) +
    (units == null ? 0 : units!.hashCode);

  @override
  String toString() => 'UsageLine[cents=$cents, label=$label, tokens=$tokens, units=$units]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cents != null) {
      json[r'cents'] = this.cents;
    } else {
      json[r'cents'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    if (this.units != null) {
      json[r'units'] = this.units;
    } else {
      json[r'units'] = null;
    }
    return json;
  }

  /// Returns a new [UsageLine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageLine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageLine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageLine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageLine(
        cents: mapValueOfType<int>(json, r'cents'),
        label: mapValueOfType<String>(json, r'label'),
        tokens: mapValueOfType<int>(json, r'tokens'),
        units: mapValueOfType<int>(json, r'units'),
      );
    }
    return null;
  }

  static List<UsageLine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageLine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageLine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageLine> mapFromJson(dynamic json) {
    final map = <String, UsageLine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageLine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageLine-objects as value to a dart map
  static Map<String, List<UsageLine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageLine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageLine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

