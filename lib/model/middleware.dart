//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Middleware {
  /// Returns a new [Middleware] instance.
  Middleware({
    this.config = const {},
    this.id,
    this.type,
  });
  /// Config is the transform's parameters: redirectScheme takes scheme (default https) and permanent (\"true\" ⇒ 301, else 302); stripPrefix REQUIRES prefixes (comma-separated, first match wins); addPrefix REQUIRES prefix; headers is a header→value map set on the response.
  Map<String, String> config;

  /// ID identifies the transform within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one. Routes reference it by this id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Type is the transform: redirectScheme, stripPrefix, addPrefix or headers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Middleware &&
    _deepEquality.equals(other.config, config) &&
    other.id == id &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Middleware[config=$config, id=$id, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'config'] = this.config;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Middleware] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Middleware? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Middleware[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Middleware[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Middleware(
        config: mapCastOfType<String, String>(json, r'config') ?? const {},
        id: mapValueOfType<String>(json, r'id'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<Middleware> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Middleware>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Middleware.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Middleware> mapFromJson(dynamic json) {
    final map = <String, Middleware>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Middleware.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Middleware-objects as value to a dart map
  static Map<String, List<Middleware>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Middleware>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Middleware.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

