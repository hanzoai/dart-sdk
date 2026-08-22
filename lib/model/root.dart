//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Root {
  /// Returns a new [Root] instance.
  Root({
    this.links = const {},
    this.capabilities = const [],
  });
  Map<String, Link> links;

  List<Capability> capabilities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Root &&
    _deepEquality.equals(other.links, links) &&
    _deepEquality.equals(other.capabilities, capabilities);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links.hashCode) +
    (capabilities.hashCode);

  @override
  String toString() => 'Root[links=$links, capabilities=$capabilities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_links'] = this.links;
      json[r'capabilities'] = this.capabilities;
    return json;
  }

  /// Returns a new [Root] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Root? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Root[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Root[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Root(
        links: Link.mapFromJson(json[r'_links']),
        capabilities: Capability.listFromJson(json[r'capabilities']),
      );
    }
    return null;
  }

  static List<Root> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Root>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Root.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Root> mapFromJson(dynamic json) {
    final map = <String, Root>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Root.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Root-objects as value to a dart map
  static Map<String, List<Root>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Root>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Root.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

