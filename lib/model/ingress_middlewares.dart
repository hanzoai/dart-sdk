//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngressMiddlewares {
  /// Returns a new [IngressMiddlewares] instance.
  IngressMiddlewares({
    this.middlewares = const [],
  });

  /// Middlewares is the org's middlewares, ordered by id.
  List<Middleware> middlewares;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngressMiddlewares &&
    _deepEquality.equals(other.middlewares, middlewares);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (middlewares.hashCode);

  @override
  String toString() => 'IngressMiddlewares[middlewares=$middlewares]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'middlewares'] = this.middlewares;
    return json;
  }

  /// Returns a new [IngressMiddlewares] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngressMiddlewares? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngressMiddlewares[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngressMiddlewares[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngressMiddlewares(
        middlewares: Middleware.listFromJson(json[r'middlewares']),
      );
    }
    return null;
  }

  static List<IngressMiddlewares> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngressMiddlewares>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngressMiddlewares.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngressMiddlewares> mapFromJson(dynamic json) {
    final map = <String, IngressMiddlewares>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngressMiddlewares.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngressMiddlewares-objects as value to a dart map
  static Map<String, List<IngressMiddlewares>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngressMiddlewares>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngressMiddlewares.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

