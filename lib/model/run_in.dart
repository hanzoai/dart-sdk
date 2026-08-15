//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunIn {
  /// Returns a new [RunIn] instance.
  RunIn({
    this.action,
    this.auth,
    this.id,
    this.props = const {},
  });

  /// Action is the name of the connector action to invoke.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// Auth is the caller's resolved credential for the connector, handed to the action verbatim. Its shape is whatever the connector's auth descriptor declares (a token string, an object), so it is opaque here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? auth;

  /// ID is the connector to run, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Props are the action's input properties, keyed by property name.
  Map<String, Object> props;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunIn &&
    other.action == action &&
    other.auth == auth &&
    other.id == id &&
    _deepEquality.equals(other.props, props);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (auth == null ? 0 : auth!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (props.hashCode);

  @override
  String toString() => 'RunIn[action=$action, auth=$auth, id=$id, props=$props]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.auth != null) {
      json[r'auth'] = this.auth;
    } else {
      json[r'auth'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'props'] = this.props;
    return json;
  }

  /// Returns a new [RunIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunIn(
        action: mapValueOfType<String>(json, r'action'),
        auth: mapValueOfType<Object>(json, r'auth'),
        id: mapValueOfType<String>(json, r'id'),
        props: mapCastOfType<String, Object>(json, r'props') ?? const {},
      );
    }
    return null;
  }

  static List<RunIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunIn> mapFromJson(dynamic json) {
    final map = <String, RunIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunIn-objects as value to a dart map
  static Map<String, List<RunIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

