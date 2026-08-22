//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Loss {
  /// Returns a new [Loss] instance.
  Loss({
    this.exhausted,
    this.undecodable,
  });
  /// Exhausted counts facts the bus abandoned after maxDeliver failed inserts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exhausted;

  /// Undecodable counts messages acked without landing because they did not parse.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? undecodable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Loss &&
    other.exhausted == exhausted &&
    other.undecodable == undecodable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exhausted == null ? 0 : exhausted!.hashCode) +
    (undecodable == null ? 0 : undecodable!.hashCode);

  @override
  String toString() => 'Loss[exhausted=$exhausted, undecodable=$undecodable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exhausted != null) {
      json[r'exhausted'] = this.exhausted;
    } else {
      json[r'exhausted'] = null;
    }
    if (this.undecodable != null) {
      json[r'undecodable'] = this.undecodable;
    } else {
      json[r'undecodable'] = null;
    }
    return json;
  }

  /// Returns a new [Loss] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Loss? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Loss[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Loss[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Loss(
        exhausted: mapValueOfType<int>(json, r'exhausted'),
        undecodable: mapValueOfType<int>(json, r'undecodable'),
      );
    }
    return null;
  }

  static List<Loss> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Loss>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Loss.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Loss> mapFromJson(dynamic json) {
    final map = <String, Loss>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Loss.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Loss-objects as value to a dart map
  static Map<String, List<Loss>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Loss>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Loss.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

