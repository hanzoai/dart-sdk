//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SecretList {
  /// Returns a new [SecretList] instance.
  SecretList({
    this.secrets = const [],
  });

  /// Secrets is one row per distinct (namespace, name) a function mounts. Values are NEVER read or returned.
  List<SecretView> secrets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretList &&
    _deepEquality.equals(other.secrets, secrets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (secrets.hashCode);

  @override
  String toString() => 'SecretList[secrets=$secrets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'secrets'] = this.secrets;
    return json;
  }

  /// Returns a new [SecretList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SecretList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SecretList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SecretList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SecretList(
        secrets: SecretView.listFromJson(json[r'secrets']),
      );
    }
    return null;
  }

  static List<SecretList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SecretList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SecretList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SecretList> mapFromJson(dynamic json) {
    final map = <String, SecretList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SecretList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SecretList-objects as value to a dart map
  static Map<String, List<SecretList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SecretList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SecretList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

