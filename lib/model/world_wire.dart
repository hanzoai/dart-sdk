//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WorldWire {
  /// Returns a new [WorldWire] instance.
  WorldWire({
    this.auth,
    this.name,
    this.path,
    this.protocol,
    this.spec,
  });
  /// Auth states what the wire asks of the caller, including which parts of it answer without a token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? auth;

  /// Name is the wire's short id — rest, mcp or zap.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Path is the address the wire answers on, under this same origin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Protocol names what the wire speaks, so a caller knows which client to point at it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  /// Spec is where this wire's operations are enumerated, when they are enumerated in a document at all. Empty for a wire that describes itself over its own protocol.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorldWire &&
    other.auth == auth &&
    other.name == name &&
    other.path == path &&
    other.protocol == protocol &&
    other.spec == spec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (auth == null ? 0 : auth!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (spec == null ? 0 : spec!.hashCode);

  @override
  String toString() => 'WorldWire[auth=$auth, name=$name, path=$path, protocol=$protocol, spec=$spec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.auth != null) {
      json[r'auth'] = this.auth;
    } else {
      json[r'auth'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
    return json;
  }

  /// Returns a new [WorldWire] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorldWire? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorldWire[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorldWire[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorldWire(
        auth: mapValueOfType<String>(json, r'auth'),
        name: mapValueOfType<String>(json, r'name'),
        path: mapValueOfType<String>(json, r'path'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        spec: mapValueOfType<String>(json, r'spec'),
      );
    }
    return null;
  }

  static List<WorldWire> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorldWire>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorldWire.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorldWire> mapFromJson(dynamic json) {
    final map = <String, WorldWire>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorldWire.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorldWire-objects as value to a dart map
  static Map<String, List<WorldWire>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorldWire>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorldWire.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

