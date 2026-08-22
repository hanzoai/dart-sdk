//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Route {
  /// Returns a new [Route] instance.
  Route({
    this.host,
    this.id,
    this.middlewares = const [],
    this.pathPrefix,
    this.priority,
    this.service,
    this.tls,
  });
  /// Host is the exact hostname this route matches, lowercased with any trailing dot stripped. It is a GLOBALLY unique claim — one route across the whole edge may hold a host, so no tenant can hijack another's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// ID identifies the route within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Middlewares are the ids of the edge transforms to apply, in this order, before the request reaches the service. At most 16.
  List<String> middlewares;

  /// PathPrefix narrows the match to requests under this path; it must start with \"/\". Empty matches every path on the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pathPrefix;

  /// Priority orders routes that share a host: higher wins, and equal priorities fall back to the longer PathPrefix.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  /// Service is the id of the backend pool this route dispatches to. A route naming a service that does not exist is skipped at compile, not served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// TLS asks the edge to terminate TLS for Host with an ACME-managed certificate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Route &&
    other.host == host &&
    other.id == id &&
    _deepEquality.equals(other.middlewares, middlewares) &&
    other.pathPrefix == pathPrefix &&
    other.priority == priority &&
    other.service == service &&
    other.tls == tls;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host == null ? 0 : host!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (middlewares.hashCode) +
    (pathPrefix == null ? 0 : pathPrefix!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (tls == null ? 0 : tls!.hashCode);

  @override
  String toString() => 'Route[host=$host, id=$id, middlewares=$middlewares, pathPrefix=$pathPrefix, priority=$priority, service=$service, tls=$tls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'middlewares'] = this.middlewares;
    if (this.pathPrefix != null) {
      json[r'pathPrefix'] = this.pathPrefix;
    } else {
      json[r'pathPrefix'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.tls != null) {
      json[r'tls'] = this.tls;
    } else {
      json[r'tls'] = null;
    }
    return json;
  }

  /// Returns a new [Route] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Route? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Route[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Route[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Route(
        host: mapValueOfType<String>(json, r'host'),
        id: mapValueOfType<String>(json, r'id'),
        middlewares: json[r'middlewares'] is Iterable
            ? (json[r'middlewares'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pathPrefix: mapValueOfType<String>(json, r'pathPrefix'),
        priority: mapValueOfType<int>(json, r'priority'),
        service: mapValueOfType<String>(json, r'service'),
        tls: mapValueOfType<bool>(json, r'tls'),
      );
    }
    return null;
  }

  static List<Route> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Route>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Route.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Route> mapFromJson(dynamic json) {
    final map = <String, Route>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Route.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Route>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Route.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

