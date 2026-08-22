//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Holdings {
  /// Returns a new [Holdings] instance.
  Holdings({
    this.domains = const [],
  });
  /// Domains is the caller org's domains, newest registration first.
  List<Holding> domains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Holdings &&
    _deepEquality.equals(other.domains, domains);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domains.hashCode);

  @override
  String toString() => 'Holdings[domains=$domains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domains'] = this.domains;
    return json;
  }

  /// Returns a new [Holdings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Holdings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Holdings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Holdings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Holdings(
        domains: Holding.listFromJson(json[r'domains']),
      );
    }
    return null;
  }

  static List<Holdings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Holdings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Holdings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Holdings> mapFromJson(dynamic json) {
    final map = <String, Holdings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Holdings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Holdings-objects as value to a dart map
  static Map<String, List<Holdings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Holdings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Holdings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

