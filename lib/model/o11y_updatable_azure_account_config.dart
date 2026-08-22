//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yUpdatableAzureAccountConfig {
  /// Returns a new [O11yUpdatableAzureAccountConfig] instance.
  O11yUpdatableAzureAccountConfig({
    this.resourceGroups = const [],
  });
  List<String> resourceGroups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yUpdatableAzureAccountConfig &&
    _deepEquality.equals(other.resourceGroups, resourceGroups);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (resourceGroups.hashCode);

  @override
  String toString() => 'O11yUpdatableAzureAccountConfig[resourceGroups=$resourceGroups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'resourceGroups'] = this.resourceGroups;
    return json;
  }

  /// Returns a new [O11yUpdatableAzureAccountConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yUpdatableAzureAccountConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yUpdatableAzureAccountConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yUpdatableAzureAccountConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yUpdatableAzureAccountConfig(
        resourceGroups: json[r'resourceGroups'] is Iterable
            ? (json[r'resourceGroups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yUpdatableAzureAccountConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yUpdatableAzureAccountConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yUpdatableAzureAccountConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yUpdatableAzureAccountConfig> mapFromJson(dynamic json) {
    final map = <String, O11yUpdatableAzureAccountConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yUpdatableAzureAccountConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yUpdatableAzureAccountConfig-objects as value to a dart map
  static Map<String, List<O11yUpdatableAzureAccountConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yUpdatableAzureAccountConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yUpdatableAzureAccountConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

