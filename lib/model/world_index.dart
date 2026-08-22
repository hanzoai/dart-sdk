//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WorldIndex {
  /// Returns a new [WorldIndex] instance.
  WorldIndex({
    this.product,
    this.summary,
    this.wires = const [],
  });
  /// Product is the product's name as customers know it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// Summary is one sentence naming what this surface serves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// Wires is every protocol door onto World, REST first. It is deliberately NOT a list of REST operations: GET /v1/openapi.json is the one enumeration of those, and a second copy here would be a second thing to keep true.
  List<WorldWire> wires;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorldIndex &&
    other.product == product &&
    other.summary == summary &&
    _deepEquality.equals(other.wires, wires);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (product == null ? 0 : product!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (wires.hashCode);

  @override
  String toString() => 'WorldIndex[product=$product, summary=$summary, wires=$wires]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'wires'] = this.wires;
    return json;
  }

  /// Returns a new [WorldIndex] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorldIndex? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorldIndex[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorldIndex[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorldIndex(
        product: mapValueOfType<String>(json, r'product'),
        summary: mapValueOfType<String>(json, r'summary'),
        wires: WorldWire.listFromJson(json[r'wires']),
      );
    }
    return null;
  }

  static List<WorldIndex> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorldIndex>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorldIndex.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorldIndex> mapFromJson(dynamic json) {
    final map = <String, WorldIndex>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorldIndex.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorldIndex-objects as value to a dart map
  static Map<String, List<WorldIndex>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorldIndex>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorldIndex.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

