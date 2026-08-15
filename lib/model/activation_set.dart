//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ActivationSet {
  /// Returns a new [ActivationSet] instance.
  ActivationSet({
    this.enabled = const [],
  });

  /// Enabled is every tool name activated for the caller's org and project.
  List<String> enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivationSet &&
    _deepEquality.equals(other.enabled, enabled);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode);

  @override
  String toString() => 'ActivationSet[enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [ActivationSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivationSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivationSet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivationSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivationSet(
        enabled: json[r'enabled'] is Iterable
            ? (json[r'enabled'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ActivationSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivationSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivationSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivationSet> mapFromJson(dynamic json) {
    final map = <String, ActivationSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivationSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivationSet-objects as value to a dart map
  static Map<String, List<ActivationSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivationSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivationSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

