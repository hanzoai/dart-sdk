//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Catalog {
  /// Returns a new [Catalog] instance.
  Catalog({
    this.connectorCount,
    this.connectors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connectorCount;

  List<ConnectorMetadata> connectors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Catalog &&
    other.connectorCount == connectorCount &&
    _deepEquality.equals(other.connectors, connectors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectorCount == null ? 0 : connectorCount!.hashCode) +
    (connectors.hashCode);

  @override
  String toString() => 'Catalog[connectorCount=$connectorCount, connectors=$connectors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connectorCount != null) {
      json[r'connectorCount'] = this.connectorCount;
    } else {
      json[r'connectorCount'] = null;
    }
      json[r'connectors'] = this.connectors;
    return json;
  }

  /// Returns a new [Catalog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Catalog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Catalog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Catalog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Catalog(
        connectorCount: mapValueOfType<int>(json, r'connectorCount'),
        connectors: ConnectorMetadata.listFromJson(json[r'connectors']),
      );
    }
    return null;
  }

  static List<Catalog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Catalog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Catalog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Catalog> mapFromJson(dynamic json) {
    final map = <String, Catalog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Catalog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Catalog-objects as value to a dart map
  static Map<String, List<Catalog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Catalog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Catalog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

