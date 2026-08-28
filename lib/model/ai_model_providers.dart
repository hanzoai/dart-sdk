//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiModelProviders {
  /// Returns a new [AiModelProviders] instance.
  AiModelProviders({
    this.providers = const [],
  });
  List<String> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiModelProviders &&
    _deepEquality.equals(other.providers, providers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providers.hashCode);

  @override
  String toString() => 'AiModelProviders[providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [AiModelProviders] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiModelProviders? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiModelProviders[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiModelProviders[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiModelProviders(
        providers: json[r'providers'] is Iterable
            ? (json[r'providers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AiModelProviders> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiModelProviders>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiModelProviders.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiModelProviders> mapFromJson(dynamic json) {
    final map = <String, AiModelProviders>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiModelProviders.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiModelProviders-objects as value to a dart map
  static Map<String, List<AiModelProviders>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiModelProviders>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiModelProviders.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

